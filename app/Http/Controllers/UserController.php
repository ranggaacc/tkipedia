<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use File;
use Illuminate\Support\Facades\Auth;
class userController extends Controller {

    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index()
    {
        $users = User::orderBy('id', 'desc')->paginate(10);

        return view('users.index', compact('users'));
    }

    // public function status(Request $request, $id) {
    
    //         $this->validate($request, [
    //             'status' => 'required'
    //         ]);
    
    //         $user = User::findOrFail($id);
    //         $user->active = $request->input("status");
    //         $user->save();
    
    //         return redirect()->route('users.index')->with('message', 'Memperbaharui status berhasil.');
    // }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        return view('users.create');
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
            'nama' => 'required',
            'email' => 'required|email|max:255|unique:users',
            'kontak' => 'required',
            'role' => 'required',
            'alamat' => 'required',
            'status'=> 'required',
            'password' => 'required|min:6|confirmed',
            'picture' => 'mimes:jpeg,bmp,jpg,png|max:5000}'
        ]); 
        $auth = Auth::user();

        $user = new User();
        $user->nama = $request->input("nama");
        $user->password = bcrypt($request->input("password"));
        $user->email = $request->input("email");
        $user->kontak = $request->input("kontak");
        $user->role = $request->input("role");
        $user->alamat = $request->input("alamat");
        $user->status= $request->input("status"); 
        if ($request->hasFile('picture')) {
            $imageTempName = $request->file('picture')->getPathname();
            $imageName = $request->file('picture')->getClientOriginalName();
            $path = base_path() . '/public/upload/images/profil/';
            $request->file('picture')->move($path , $imageName);
            $user->picture = '/upload/images/profil/'.$imageName;
        }

        $user->save();

        return redirect()->route('user.index')->with('message2', 'User created successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function show($id)
    {
        $user = User::findOrFail($id);
        return view('users.show', compact('user'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function edit($id)
    {
        $user = User::findOrFail($id);

        return view('users.edit', compact('user'));
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
            'nama' => 'required',
            'email' => 'required|email',
            'kontak' => 'required',
            'role' => 'required',
            'alamat' => 'required',
            'status'=> 'required',
            'password' => 'required|min:6|confirmed',
            'picture' => 'mimes:jpeg,bmp,jpg,png|max:5000}'
        ]); 
        $auth = Auth::user();

        $user = User::findOrFail($id);
        $user->nama = $request->input("nama");
        $user->password = bcrypt($request->input("password"));
        $user->email = $request->input("email");
        $user->kontak = $request->input("kontak");
        $user->role = $request->input("role");
        $user->alamat = $request->input("alamat");
        $user->status= $request->input("status"); 
        if ($request->hasFile('picture')) {
            $imageTempName = $request->file('picture')->getPathname();
            $imageName = $request->file('picture')->getClientOriginalName();
            $path = base_path() . '/public/upload/images/profil/';
            $request->file('picture')->move($path , $imageName);
            $user->picture = '/upload/images/profil/'.$imageName;
        }

        $user->save();

        return redirect()->route('user.index')->with('message2', 'Item updated successfully.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function destroy($id)
    {
        $user = User::findOrFail($id);
        $user->delete();

        return redirect()->route('user.index')->with('message2', 'Item deleted successfully.');
    }

}
