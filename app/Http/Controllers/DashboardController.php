<?php namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\User;
use App\Models\Aplikasi;
use App\Models\Iklan;
use App\Models\Dashboard;
use App\Models\Count;
use App\Models\Informasi;
use App\Models\Artikel;
use App\Usercount;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use File;
use Stichoza\GoogleTranslate\TranslateClient;

class DashboardController extends Controller
{
	
	/**
	* Display a listing of the resource.
	     *
	     * @return \Illuminate\Http\Response
	     */
	public function getAllUser()
	{
		$user =  User::get();
		return $user;
	}
	
	public function __construct()
    {
        $this->middleware('auth');
    }

	public function getUserByEmail($email)
	    {
		$user =  User::Where('email',$email)->get();
		return $user;
	}
	
	public function dashboard()
	    {
		$users = Auth::user();
		$informasiscount=Informasi::count();
		$artikelscount=Artikel::count();
		$userscount=User::count();
		
		return view('dashboard',[ 'userscount'=>$userscount, 'artikelscount'=>$artikelscount,'informasiscount'=>$informasiscount], compact('users'));
		
	}
	
	public function updateimg()
	    {
		$user = Auth::user();
		return view('updateimg', compact('user'));
		
	}
	
	
	public function updateimgprofil(Request $request)
	    {
		$this->validate($request, [
		            'img' => 'required|mimes:jpeg,bmp,jpg,png'
		        ]);
		$user = Auth::user();
		$imageName = $user->id . '-' . $user->name . '-' . 
		        $request->file('img')->getClientOriginalName();
		$path = base_path() . '/public/upload/images/profil/';
		$request->file('img')->move($path , $imageName);
		$user->picture = '/upload/images/profil/'.$imageName;
		$user->save();
		
		return $this->dashboard();
	}
	
	
}