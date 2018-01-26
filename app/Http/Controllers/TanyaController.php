<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\Tanya;
use Illuminate\Http\Request;
use File;

class TanyaController extends Controller {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		$tanyas = Tanya::orderBy('id', 'desc')->paginate(10);

		return view('tanya.index', compact('tanyas'));
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		return view('tanya.create');
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @param Request $request
	 * @return Response
	 */
	public function store(Request $request)
	{
		$tanya = new Tanya();

		$tanya->name = $request->input("name");
        $tanya->description = $request->input("description");
        $tanya->email = $request->input("email");		
		$tanya->save();

		return redirect()->route('tanya.index')->with('message', 'Item created successfully.');
	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		$tanya = Tanya::findOrFail($id);

		return view('tanya.show', compact('tanya'));
	}

	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
		$tanya = Tanya::findOrFail($id);

		return view('tanyas.edit', compact('tanya'));
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
		$tanya = Tanya::findOrFail($id);

		$tanya->name = $request->input("name");
        $tanya->description = $request->input("description");
        $tanya->email = $request->input("email");
		$tanya->save();

		return redirect()->route('tanya.index')->with('message', 'Item updated successfully.');
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		$tanya = Tanya::findOrFail($id);
		$tanya->delete();

		return redirect()->route('tanya.index')->with('message', 'Item deleted successfully.');
	}

}
