<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\Artikel;
use Illuminate\Http\Request;
use File;
use Illuminate\Support\Facades\Auth;
use Yajra\Datatables\Facades\Datatables;
use DB;

class ArtikelController extends Controller {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		//$artikels = Artikel::orderBy('id', 'desc')->paginate(10);

		return view('artikels.index');
	}

	public function approvehtml($d){
        
        if($d->active==0 && (Auth::user()->role=="admin" || Auth::user()->role=="publisher" || Auth::user()->role=="approval"))    
            return 
            '<form action="/artikelstatus/'.$d->id.'" method="POST" style="display: inline;" onsubmit="if(confirm("Publsih? Are you sure?")) { return true } else {return false };">
                <input type="hidden" name="_method" value="POST">
                <input type="hidden" name="status" value="1">
                <input type="hidden" name="_token" value="'.csrf_token().'">
                <button type="submit" class="btn btn-xs btn-success"><i class="glyphicon glyphicon-trash"></i> Approve</button>
            </form>';
        elseif($d->active==1 && (Auth::user()->role=="admin" || Auth::user()->role=="publisher" || Auth::user()->role=="approval"))
            return
            '<form action="/artikelstatus/'.$d->id.'" method="POST" style="display: inline;" onsubmit="if(confirm("Unpublish ID ? Are you sure?")) { return true } else {return false };">
                <input type="hidden" name="_method" value="POST">
                <input type="hidden" name="status" value="0">
                <input type="hidden" name="_token" value="'.csrf_token().'">
                <button type="submit" class="btn btn-xs btn-info"><i class="glyphicon glyphicon-trash"></i> Reject</button>
            </form>';
	}
	
	public function dataArtikel(){		

		
		return Datatables::queryBuilder(DB::table('artikel')
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
            '<a href="/artikels/'.$d->id.'" class="btn btn-xs btn-primary" ><i class="glyphicon glyphicon-eye-open"></i> View</a>
			'.$this->approvehtml($d).'';
		elseif (Auth::user()->role=="publik")
			return 
			'<a href="/artikels/'.$d->id.'" class="btn btn-xs btn-primary" ><i class="glyphicon glyphicon-eye-open"></i> View</a>';
		else
				return 
		            '<a href="/artikels/'.$d->id.'" class="btn btn-xs btn-primary" ><i class="glyphicon glyphicon-eye-open"></i> View</a>
		            <a href="/artikels/'.$d->id.'/edit" class="btn btn-xs btn-warning"><i class="glyphicon glyphicon-edit"></i> Edit</a>
		            <form action="/artikels/'.$d->id.'" method="POST" style="display: inline;" onsubmit="if(confirm("Delete? Are you sure?")) { return true } else {return false };">
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
    
            $artikel = Artikel::findOrFail($id);
            $artikel->active = $request->input("status");
            $artikel->save();
    
            return redirect()->route('artikels.index')->with('message', 'Memperbaharui status berhasil.');
    }

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		return view('artikels.create');
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @param Request $request
	 * @return Response
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


		$artikel = new Artikel();
		$user = Auth::user();     
		$artikel->title = $request->input("title");
        $artikel->user = $user->nama;
        $artikel->description = $request->input("description");
        $artikel->picture = $request->input("picture");
		$artikel->tanggal = $request->input("tanggal");
        $artikel->file1= $request->input("file1");
		$artikel->file1= $request->input("file2");
		
		if ($request->hasFile('picture')) {
			$imageTempName = $request->file('picture')->getPathname();
			$imageName = $request->file('picture')->getClientOriginalName();
			$path = base_path() . '/public/upload/images/';
			$request->file('picture')->move($path , $imageName);
			$artikel->picture = '/upload/images/'.$imageName;
		}
		if ($request->hasFile('file1')) {
			$imageTempName = $request->file('file1')->getPathname();
			$imageName = $request->file('file1')->getClientOriginalName();
			$path = base_path() . '/public/upload/file/';
			$request->file('file1')->move($path , $imageName);
			$artikel->file1 = '/upload/file/'.$imageName;
		}
		if ($request->hasFile('file2')) {
			$imageTempName = $request->file('file2')->getPathname();
			$imageName = $request->file('file2')->getClientOriginalName();
			$path = base_path() . '/public/upload/file/';
			$request->file('file2')->move($path , $imageName);
			$artikel->file2 = '/upload/file/'.$imageName;
		}
		$artikel->save();

		return redirect()->route('artikels.index')->with('message2', 'Item created successfully.');
	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		$artikel = Artikel::findOrFail($id);
		return view('artikels.show', compact('artikel'));
	}

	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
		$artikel = Artikel::findOrFail($id);

		return view('artikels.edit', compact('artikel'));
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @param Request $request
	 * @return Response
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
		$artikel = Artikel::findOrFail($id);
		$artikel->title = $request->input("title");
        $artikel->user = $user->name;
        $artikel->description = $request->input("description");
        $artikel->tanggal = $request->input("tanggal");

		if ($request->hasFile('picture')) {
			$artikel->picture = $request->input("picture");
			$imageTempName = $request->file('picture')->getPathname();
			$imageName = $request->file('picture')->getClientOriginalName();
			$path = base_path() . '/public/upload/images/';
			$request->file('picture')->move($path , $imageName);
			$artikel->picture = '/upload/images/'.$imageName;
		}
		if ($request->hasFile('file1')) {
			$imageTempName = $request->file('file1')->getPathname();
			$imageName = $request->file('file1')->getClientOriginalName();
			$path = base_path() . '/public/upload/file/';
			$request->file('file1')->move($path , $imageName);
			$artikel->file1 = '/upload/file/'.$imageName;
		}
		if ($request->hasFile('file2')) {
			$imageTempName = $request->file('file2')->getPathname();
			$imageName = $request->file('file2')->getClientOriginalName();
			$path = base_path() . '/public/upload/file/';
			$request->file('file2')->move($path , $imageName);
			$artikel->file2 = '/upload/file/'.$imageName;
		}

		$artikel->save();

		return redirect()->route('artikels.index')->with('message2', 'Item updated successfully.');
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		$artikel = Artikel::findOrFail($id);
		$artikel->delete();

		return redirect()->route('artikels.index')->with('message2', 'Item deleted successfully.');
	}

}
