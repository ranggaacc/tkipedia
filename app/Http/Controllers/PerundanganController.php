<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\Perundangan;
use Illuminate\Http\Request;
use File;

class PerundanganController extends Controller {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		$perundangans = Perundangan::all();

		return view('perundangan.index', compact('perundangans'));
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		return view('perundangan.create');
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @param Request $request
	 * @return Response
	 */
	public function store(Request $request)
	{
		$perundangan = new Perundangan();

		$perundangan->name = $request->input("name");
        $perundangan->description = $request->input("description");
		
		$tanya->save();

		return redirect()->route('perundangan.index')->with('message', 'Item created successfully.');
	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		$perundangans = Perundangan::findOrFail($id);

		return view('perundangan.show', compact('perundangans'));
	}

	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
		$perundangans = Perundangan::findOrFail($id);

		return view('perundangan.edit', compact('perundangans'));
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
		$perundangan = Perundangan::findOrFail($id);

		$perundangan->kategori = $request->input("kategori");
        $perundangan->link = $request->input("link");

		$perundangan->save();

		return redirect()->route('perundangans.index')->with('message', 'Link updated successfully.');
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		$perundangan = Perundangan::findOrFail($id);
		$perundangan->delete();

		return redirect()->route('perundangans.index')->with('message', 'Item deleted successfully.');
	}

}
