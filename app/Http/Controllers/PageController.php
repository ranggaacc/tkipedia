<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use App\MasterData;
use App\User;
use App\Models\Faq;
use App\Aplikasi;
use App\Models\Informasi;
use App\Models\Artikel;
use App\Models\Tanya;
use App\Models\Perundangan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Input;
class PageController extends Controller {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */

	public function homeView() {

		$informasis=Informasi::where('active','1')->get();
		$artikelsbig=Artikel::where('active','1')->take(2)->get();
		$artikels=Artikel::where('active','1')->get();
		$artikelssmall=Artikel::where('active','1')->take(2)->get();
		$informasiscount=Informasi::where('active','1')->count();
		$artikelscount=Artikel::count();
		$userscount=User::count();
		
		return view('page.front-page',['informasis'=>$informasis,'informasis'=>$informasis,'userscount'=>$userscount,'artikelsbig'=>$artikelsbig,'artikelssmall'=>$artikelssmall,'artikels'=>$artikels,'artikelscount'=>$artikelscount]);
	}
	public function searchInformasi() {
		$q = Input::get ( 'q' );
		if (stripos($q, "perundangan") !== FALSE){
			$perundangan= Perundangan::all();
			return view('page.perundangan',['perundangan'=>$perundangan]);
		}
		else{
			$informasis=Informasi::where(function($query) use ($q){
	     	$query->where('active','1')->where('title','LIKE','%'.$q.'%');
	    	})->get();
			return view('page.searchinformasi',['informasis'=>$informasis,'q'=>$q]);
		}
	}
	public function searchDetailView() {
		return view('page.detail-search');
	}
	public function detailInformasiView($id) {
		$informasis = Informasi::Where('slug', $id)->first();
		$informasis->view+=1;
		$informasis->save();
		return view('page.detailinformasi',['informasis'=>$informasis]);
	}
	public function allartikel(){
		$artikels = Artikel::where('active','1')->paginate(10);
		return view('page.allartikel',['artikels'=>$artikels]);

	}
	public function detailArtikelView($id) {
		$artikels = Artikel::Where('slug', $id)->first();
		$artikels->view+=1;
		$artikels-> save();
		return view('page.detailartikel',['artikels'=>$artikels]);
	}

	public function detailFaqView($id) {
		
		$artikels = Faq::Where('slug', $id)->first();
		$artikels->view+=1;
		$artikels-> save();

		return view('page.detailartikel',['artikels'=>$artikels]);
	}

	public function faqView() {		
		$faqs= Faq::where('active','1')->get();
		$count_faqs=count($faqs);

		return view('page.faq',compact('faqs','$bagi'));

	}
	public function paginatefaq($skip,$take) {
	
		$faqs= Faq::where('active','1')->skip($skip)->take($take)->get();
		$count_faqs=count($faqs);


		return view('page.faqpaginate',compact('faqs'));

	}

	public function linkView() {
		return view('page.link');
	}

	public function perundanganView() {
		$perundangan= Perundangan::all();
		return view('page.perundangan',['perundangan'=>$perundangan]);
	}

	public function masterdata()
	{
		$user = Auth::user();
		if($user->role=='admin'){
			$master_datas = MasterData::orderBy('id', 'desc')->paginate(10);
		}else{
			$master_datas = MasterData::orderBy('id', 'desc')->Where('user',$user->email)->Where('id_aplikasi',$user->active_app)->paginate(10);			
		}
		return view('page.master-data', compact('master_datas'));
	}

	public function userdata()
	{
		$user = Auth::user();
		if($user->role=='admin'){
			$master_datas = User::orderBy('id', 'desc')->paginate(10);
		}else{
			$master_datas = User::orderBy('id', 'desc')->Where('email',$user->email)->paginate(10);			
		}
		return view('page.user-data', compact('master_datas'));
	}

	public function tanyastore(Request $request)
	{

		$this->validate($request, [
			'security-code' => 'required|captcha',
            'description' => 'required',
            'email'=>'required|email|',            
			'name' => 'required',            
 		]);
		
		$tanya = new Tanya();

		$tanya->name = $request->input("name");
        $tanya->description = $request->input("description");
        $tanya->email = $request->input("email");		
		$tanya->save();

		return redirect('/');	
	}

}
