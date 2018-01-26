<?php
use App\User;
use App\Models\Inbox;
use Illuminate\Support\Facades\Auth;

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

// Front page router
Route::get('/', 'PageController@homeView');
Route::get('/faqs', 'PageController@faqView');
Route::get('/link', 'PageController@linkView');
Route::get('/perundangan', 'PageController@perundanganView');
Route::get('/searchinformasi', 'PageController@searchInformasi');
Route::get('/search/detail', 'PageController@searchDetailView');
Route::get('/detailinformasi/{id}', 'PageController@detailInformasiView');
Route::get('/detailartikel/{id}', 'PageController@detailArtikelView');
Route::get('/detailfaq/{id}', 'PageController@detailFaqView');
Route::get('/allartikel', 'PageController@allartikel');
Route::get('/paginatefaq/{skip}/{take}','PageController@paginatefaq'); 
Route::post('/tanyastore','PageController@tanyastore'); 
Route::post("/artikelstatus/{id?}","ArtikelController@status");
Route::post("/informasistatus/{id?}","InformasiController@status");
Route::post("/faqstatus/{id?}","FaqController@status");

Route::group(['middleware' => 'auth'], function(){

    // Route::get('/', 'DashboardController@dashboard');
    Route::get('/dashboard', 'DashboardController@dashboard');
    Route::get('/updateimg', 'DashboardController@updateimg');
    Route::post('/updateimgprofil', 'DashboardController@updateimgprofil');
    Route::get('/home', 'HomeController@index');
    Route::get('/user-data', 'PageController@userdata');
    Route::get('/admin','DashboardController@dashboard');

    Route::resource("artikels","ArtikelController");
    Route::get("/artikel-data","ArtikelController@dataArtikel");
    Route::resource("galeris","GaleriController");
    Route::resource("faq","FaqController");
    Route::get("/faq-data","FaqController@dataFaq");    
    Route::resource("tanya","TanyaController");    
    Route::resource("informasis","InformasiController");
    Route::get("/informasi-data","InformasiController@dataInformasi");
    Route::resource("perundangans","PerundanganController");
    Route::resource("user","UserController");

});


Route::get('/getAllUser', 'DashboardController@getAllUser');
Route::get('/getUserByEmail/{email}', 'DashboardController@getUserByEmail');
Route::auth();

//activation
Route::get('/user/activation/{token}', 'Auth\AuthController@activateUser')->name('user.activate');

//jwt-auth
Route::group(['middleware' => ['bcors']], function () {

Route::post('/signup', function(){

    $input = Input::only('email','birthdate','password','role','name','hp','domisili','gender','status_kawin');
    $input['password'] = Hash::make($input['password']);
    $email = $input['email'];

    	if (isset($input['email']) && isset($input['birthdate']) && isset($input['password']) && isset($input['gender']) &&
			isset($input['status_kawin']) && isset($input['hp']) && isset($input['name']) 
            && isset($input['domisili'])){
			
            $user = User::where('email',$email)->first();

                    if($user){
                        return Response::json(['status'=>false,'message'=>'user already exsist']);
                    }else{
                        try {
                            $input['activated']=1;
                            $input['status']=1;
                            $inbox = new Inbox();
                            $inbox->title = "Selamat Bergabung di WG Circle Crew";
                            $inbox->description = "Haiker adalah kependekan dari Hai Baikers. Ia mulai dipopulerkan pada tahun 1960 dengan diluncurkannya lembaran-lembaran Letraset yang menggunakan kalimat-kalimat dari Lorem Ipsum, dan seiring munculnya perangkat lunak Desktop Publishing seperti Aldus PageMaker juga memiliki versi Lorem Ipsum.";
                            $inbox->id_receiver = $input['email'];
                            $inbox->id_user = 'admin-haiker@gmail.com';
                            $inbox->send_at= date("Y-m-d H:i:s"); 
                            $inbox->save();
                            User::create($input);            
                        } catch (Exception $e) {
                            return Response::json(['status'=>false,'message'=>$e]);
                        }
                        return Response::json(['status'=>true,'message'=>"success created user"]);            
                    }
                    }else{
                        return Response::json(['status'=>false,'message'=>'parameter input not complete!','data'=>$input]);
                    }
        });

                    Route::post('/signin', function(){

                        $input = Input::only('email','password');
                        //$customClaims = ['name' => $user->nama, 'picture' => $user->file_foto];
                        //if (!$token = JWTAuth::attempt($input, $customClaims)) {
                        
                        if (!$token = JWTAuth::attempt($input)) {
                            return response()->json(['status'=>false,'message' => 'wrong email or password.']);
                        }
                        $user = User::Where('email',$input['email'])->first();
                        return response()->json(['status'=>true,'user'=>$user,'token' => $token]);

                    });

 });


    Route::group(['middleware' => ['bcors','jwt.auth']], function () {
        
        Route::post('/addorder','ApiController@addorder');
        Route::post('/addfeedback','ApiController@addfeedback');
        Route::delete('/deleteorder','ApiController@destroyorder');

        Route::get('/getproduct/{string?}','ApiController@getproduct');
        Route::get('/getevents/{string?}','ApiController@getevents');
        Route::get('/getexhibitions/{string?}','ApiController@getexhibitions');
        Route::get('/getbikes/{string?}','ApiController@getbikes');
        Route::get('/getreviews/{string?}','ApiController@getreviews');
        Route::get('/getinbox','ApiController@getinbox');
        Route::get('/getorder','ApiController@getorder');
        Route::get('/getvloggers/{string?}','ApiController@getvloggers');
    });
