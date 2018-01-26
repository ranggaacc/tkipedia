<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\Informasi;
use Illuminate\Http\Request;
use File;
use Illuminate\Support\Facades\Auth;
use Yajra\Datatables\Facades\Datatables;
use DB;
class InformasiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $informasis = Informasi::orderBy('id', 'desc')->paginate(10);

        return view('informasi.index', compact('informasis'));
    }
    public function approvehtml($d){
        
        if($d->active==0 && (Auth::user()->role=="admin" || Auth::user()->role=="publisher" || Auth::user()->role=="approval"))    
            return 
            '<form action="/informasistatus/'.$d->id.'" method="POST" style="display: inline;" onsubmit="if(confirm("Publsih? Are you sure?")) { return true } else {return false };">
                <input type="hidden" name="_method" value="POST">
                <input type="hidden" name="status" value="1">
                <input type="hidden" name="_token" value="'.csrf_token().'">
                <button type="submit" class="btn btn-xs btn-success"><i class="glyphicon glyphicon-trash"></i> Approve</button>
            </form>';
        elseif($d->active==1 && (Auth::user()->role=="admin" || Auth::user()->role=="publisher" || Auth::user()->role=="approval"))
            return
            '<form action="/informasistatus/'.$d->id.'" method="POST" style="display: inline;" onsubmit="if(confirm("Unpublish ID ? Are you sure?")) { return true } else {return false };">
                <input type="hidden" name="_method" value="POST">
                <input type="hidden" name="status" value="0">
                <input type="hidden" name="_token" value="'.csrf_token().'">
                <button type="submit" class="btn btn-xs btn-info"><i class="glyphicon glyphicon-trash"></i> Reject</button>
            </form>';
    }
    
    public function dataInformasi(){      

        return Datatables::queryBuilder(DB::table('informasi')
        ->orderBy('tanggal', 'desc'))
        ->editColumn('tanggal', function ($berita) {
            return date('j F Y', strtotime($berita->tanggal));
        })
        ->editColumn('active', function ($berita) {
            if($berita->active==1)
                return "Yes";
            else
                return "No";
        })
        ->addColumn('action', function ($d) {
        if(Auth::user()->role=="publisher")
            return 
            '<a href="/informasis/'.$d->id.'" class="btn btn-xs btn-primary" ><i class="glyphicon glyphicon-eye-open"></i> View</a>
            '.$this->approvehtml($d).'';
        elseif (Auth::user()->role=="publik")
            return 
            '<a href="/informasis/'.$d->id.'" class="btn btn-xs btn-primary" ><i class="glyphicon glyphicon-eye-open"></i> View</a>';
        else
                return 
                    '<a href="/informasis/'.$d->id.'" class="btn btn-xs btn-primary" ><i class="glyphicon glyphicon-eye-open"></i> View</a>
                    <a href="/informasis/'.$d->id.'/edit" class="btn btn-xs btn-warning"><i class="glyphicon glyphicon-edit"></i> Edit</a>
                    <form action="/informasis/'.$d->id.'" method="POST" style="display: inline;" onsubmit="if(confirm("Delete? Are you sure?")) { return true } else {return false };">
                    <input type="hidden" name="_method" value="DELETE">
                    <input type="hidden" name="_token" value="'.csrf_token().'">
                    <button type="submit" class="btn btn-xs btn-danger"><i class="glyphicon glyphicon-trash"></i> Hapus</button>
                </form>
                '.$this->approvehtml($d).'';        
        
        })
        ->make(true);
    }
    public function status(Request $request, $id) {
    
            $this->validate($request, [
                'status' => 'required'
            ]);
    
            $informasi = Informasi::findOrFail($id);
            $informasi->active = $request->input("status");
            $informasi->save();
    
            return redirect()->route('informasis.index')->with('message', 'Memperbaharui status berhasil.');
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('informasi.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'title' => 'required|max:255',
            'description' => 'required',
            'tanggal'=>'required',            
            'kategori'=>'required',            
            'picture' => 'mimes:jpg,jpeg,png',            
            'file1' => 'mimes:jpg,jpeg,png,pdf,docx,doc',               
            'file2' => 'mimes:jpg,jpeg,png,pdf,docx,doc',               
        ]);

        $informasi = new Informasi();
        $user = Auth::user();        
        $informasi->title = $request->input("title");
        $informasi->user = $user->nama;
        $informasi->kategori = $request->input("kategori");
        $informasi->description = $request->input("description");
        $informasi->picture = $request->input("picture");
        $informasi->tanggal = $request->input("tanggal");
        $informasi->file1= $request->input("file1");
        $informasi->file1= $request->input("file2");
        if ($request->hasFile('picture')) {
            $imageTempName = $request->file('picture')->getPathname();
            $imageName = $request->file('picture')->getClientOriginalName();
            $path = base_path() . '/public/upload/images/';
            $request->file('picture')->move($path , $imageName);
            $informasi->picture = '/upload/images/'.$imageName;
        }
        if ($request->hasFile('file1')) {
            $imageTempName = $request->file('file1')->getPathname();
            $imageName = $request->file('file1')->getClientOriginalName();
            $path = base_path() . '/public/upload/file/';
            $request->file('file1')->move($path , $imageName);
            $informasi->file1 = '/upload/file/'.$imageName;
        }
        if ($request->hasFile('file2')) {
            $imageTempName = $request->file('file2')->getPathname();
            $imageName = $request->file('file2')->getClientOriginalName();
            $path = base_path() . '/public/upload/file/';
            $request->file('file2')->move($path , $imageName);
            $informasi->file2 = '/upload/file/'.$imageName;
        }

        $informasi->save();

        return redirect()->route('informasis.index')->with('message2', 'Item created successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $informasi = Informasi::findOrFail($id);

        return view('informasi.show', compact('informasi'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $informasi = Informasi::findOrFail($id);

        return view('informasi.edit', compact('informasi'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {	
        $this->validate($request, [
            'title' => 'required|max:255',
            'description' => 'required',
            'tanggal'=>'required', 
            'kategori'=>'required',                       
            'picture' => 'mimes:jpg,jpeg,png',            
            'file1' => 'mimes:jpg,jpeg,png,pdf,docx,doc',               
            'file2' => 'mimes:jpg,jpeg,png,pdf,docx,doc',               
        ]);

        
        $user = Auth::user();        
        $informasi = Informasi::findOrFail($id);
        $informasi->title = $request->input("title");
        $informasi->user = $user->nama;
        $informasi->kategori = $request->input("kategori");
        $informasi->tanggal = $request->input("tanggal");
        $informasi->description = $request->input("description");

        if ($request->hasFile('picture')) {
            $informasi->picture = $request->input("picture");
            $imageTempName = $request->file('picture')->getPathname();
            $imageName = $request->file('picture')->getClientOriginalName();
            $path = base_path() . '/public/upload/images/';
            $request->file('picture')->move($path , $imageName);
            $informasi->picture = '/upload/images/'.$imageName;
        }
        if ($request->hasFile('file1')) {
            $imageTempName = $request->file('file1')->getPathname();
            $imageName = $request->file('file1')->getClientOriginalName();
            $path = base_path() . '/public/upload/file/';
            $request->file('file1')->move($path , $imageName);
            $informasi->file1 = '/upload/file/'.$imageName;
        }
        if ($request->hasFile('file2')) {
            $imageTempName = $request->file('file2')->getPathname();
            $imageName = $request->file('file2')->getClientOriginalName();
            $path = base_path() . '/public/upload/file/';
            $request->file('file2')->move($path , $imageName);
            $informasi->file2 = '/upload/file/'.$imageName;
        }


        $informasi->save();

        return redirect()->route('informasis.index')->with('message2', 'Item updated successfully.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $informasi = Informasi::findOrFail($id);
        $informasi->delete();

        return redirect()->route('informasis.index')->with('message2', 'Item deleted successfully.');
    }
}
