<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\Faq;
use Illuminate\Http\Request;
use File;
use Illuminate\Support\Facades\Auth;
use Yajra\Datatables\Facades\Datatables;
use DB;
class FaqController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $faqs = Faq::orderBy('id', 'desc')->paginate(10);

        return view('faq.index', compact('faqs'));
    }
    public function approvehtml($d){
        
        if($d->active==0 && (Auth::user()->role=="admin" || Auth::user()->role=="publisher" || Auth::user()->role=="approval"))    
            return 
            '<form action="/faqstatus/'.$d->id.'" method="POST" style="display: inline;" onsubmit="if(confirm("Publsih? Are you sure?")) { return true } else {return false };">
                <input type="hidden" name="_method" value="POST">
                <input type="hidden" name="status" value="1">
                <input type="hidden" name="_token" value="'.csrf_token().'">
                <button type="submit" class="btn btn-xs btn-success"><i class="glyphicon glyphicon-trash"></i> Approve</button>
            </form>';
        elseif($d->active==1 && (Auth::user()->role=="admin" || Auth::user()->role=="publisher" || Auth::user()->role=="approval"))
            return
            '<form action="/faqstatus/'.$d->id.'" method="POST" style="display: inline;" onsubmit="if(confirm("Unpublish ID ? Are you sure?")) { return true } else {return false };">
                <input type="hidden" name="_method" value="POST">
                <input type="hidden" name="status" value="0">
                <input type="hidden" name="_token" value="'.csrf_token().'">
                <button type="submit" class="btn btn-xs btn-info"><i class="glyphicon glyphicon-trash"></i> Reject</button>
            </form>';
    }
    
    public function dataFaq(){      

        return Datatables::queryBuilder(DB::table('faq')
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
            '<a href="/faq/'.$d->id.'" class="btn btn-xs btn-primary" ><i class="glyphicon glyphicon-eye-open"></i> View</a>
            '.$this->approvehtml($d).'';
        elseif (Auth::user()->role=="publik")
            return 
            '<a href="/faq/'.$d->id.'" class="btn btn-xs btn-primary" ><i class="glyphicon glyphicon-eye-open"></i> View</a>';
        else
                return 
                    '<a href="/faq/'.$d->id.'" class="btn btn-xs btn-primary" ><i class="glyphicon glyphicon-eye-open"></i> View</a>
                    <a href="/faq/'.$d->id.'/edit" class="btn btn-xs btn-warning"><i class="glyphicon glyphicon-edit"></i> Edit</a>
                    <form action="/faq/'.$d->id.'" method="POST" style="display: inline;" onsubmit="if(confirm("Delete? Are you sure?")) { return true } else {return false };">
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
    
            $faq = faq::findOrFail($id);
            $faq->active = $request->input("status");
            $faq->save();
    
            return redirect()->route('faq.index')->with('message', 'Memperbaharui status berhasil.');
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('faq.create');
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
			'picture' => 'mimes:jpg,jpeg,png',            
            'file1' => 'mimes:jpg,jpeg,png,pdf,docx,doc',               
            'file2' => 'mimes:jpg,jpeg,png,pdf,docx,doc',                              
        ]);

        $faq = new Faq();
        $user = Auth::user();        
        $faq->title = $request->input("title");
        $faq->user = $user->nama;
        $faq->description = $request->input("description");
        $faq->picture = $request->input("picture");
        $faq->tanggal = $request->input("tanggal");
        $faq->file1= $request->input("file1");
        $faq->file1= $request->input("file2");

        if ($request->hasFile('picture')) {
            $imageTempName = $request->file('picture')->getPathname();
            $imageName = $request->file('picture')->getClientOriginalName();
            $path = base_path() . '/public/upload/images/';
            $request->file('picture')->move($path , $imageName);
            $faq->picture = '/upload/images/'.$imageName;
        }
        if ($request->hasFile('file1')) {
            $imageTempName = $request->file('file1')->getPathname();
            $imageName = $request->file('file1')->getClientOriginalName();
            $path = base_path() . '/public/upload/file/';
            $request->file('file1')->move($path , $imageName);
            $faq->file1 = '/upload/file/'.$imageName;
        }
        if ($request->hasFile('file2')) {
            $imageTempName = $request->file('file2')->getPathname();
            $imageName = $request->file('file2')->getClientOriginalName();
            $path = base_path() . '/public/upload/file/';
            $request->file('file2')->move($path , $imageName);
            $faq->file2 = '/upload/file/'.$imageName;
        }

        $faq->save();

        return redirect()->route('faq.index')->with('message2', 'Item created successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $faq = Faq::findOrFail($id);

        return view('faq.show', compact('faq'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $faq = Faq::findOrFail($id);

        return view('faq.edit', compact('faq'));
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
			'picture' => 'mimes:jpg,jpeg,png',            
            'file1' => 'mimes:jpg,jpeg,png,pdf,docx,doc',               
            'file2' => 'mimes:jpg,jpeg,png,pdf,docx,doc',                              
        ]);
        
        $user = Auth::user();        
        $faq = Faq::findOrFail($id);
        $faq->title = $request->input("title");
        $faq->user = $user->nama;
        $faq->kategori = $request->input("kategori");
        $faq->tanggal = $request->input("tanggal");
        $faq->description = $request->input("description");

        if ($request->hasFile('picture')) {
            $faq->picture = $request->input("picture");
            $imageTempName = $request->file('picture')->getPathname();
            $imageName = $request->file('picture')->getClientOriginalName();
            $path = base_path() . '/public/upload/images/';
            $request->file('picture')->move($path , $imageName);
            $faq->picture = '/upload/images/'.$imageName;
        }
        if ($request->hasFile('file1')) {
            $imageTempName = $request->file('file1')->getPathname();
            $imageName = $request->file('file1')->getClientOriginalName();
            $path = base_path() . '/public/upload/file/';
            $request->file('file1')->move($path , $imageName);
            $faq->file1 = '/upload/file/'.$imageName;
        }
        if ($request->hasFile('file2')) {
            $imageTempName = $request->file('file2')->getPathname();
            $imageName = $request->file('file2')->getClientOriginalName();
            $path = base_path() . '/public/upload/file/';
            $request->file('file2')->move($path , $imageName);
            $faq->file2 = '/upload/file/'.$imageName;
        }


        $faq->save();

        return redirect()->route('faq.index')->with('message2', 'Item updated successfully.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $faq = Faq::findOrFail($id);
        $faq->delete();
        return redirect()->route('faq.index')->with('message2', 'Item deleted successfully.');
    }
}
