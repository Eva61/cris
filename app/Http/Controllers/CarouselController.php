<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Carousel; 
use App\Http\Requests\CarouselRequest; 
use Storage;  

class CarouselController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $carousels= Carousel::orderBy('id','ASC')->paginate(5);
        return view('carousels.index', compact('carousels'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('carousels.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $carousel = new Carousel;

        $carousel->file   = $request->file;
        $carousel->title   = $request->title;
        $carousel->description  = $request->description;

        $carousel->save();

        //IMAGE
       if($request->file('file')){
           $path = Storage::disk('public')->put('image', $request->file('file'));
           $carousel->fill(['file' => asset($path)])->save();
       }

        return redirect()->route('carousels.index')->with('info', 'El producto fue guardado');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $carousel = Carousel::find($id);
        return view('carousels.show', compact('carousel'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
         $carousel = Carousel::find($id);
        return view('carousels.edit', compact('carousel'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(CarouselRequest $request, $id)
    {
        $carousel = Carousel::find($id);

        //IMAGE
       if($request->file('file')){
           $path = Storage::disk('public')->put('image', $request->file('file'));
           $carousel->fill(['file' => asset($path)])->save();
       }

        $carousel ->title    =   $request->title;
        $carousel ->description    =   $request->description;

        $carousel->save();

        return redirect()->route('carousels.index')->with('info', 'El producto fue actualizado');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $carousel = Carousel::find($id);
        $carousel->delete();

      return back()->with('info','El producto fue eliminado');
    }
}
