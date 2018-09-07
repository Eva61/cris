<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product; 
use App\Http\Requests\ProductRequest; 
use Storage; 

class ProductController extends Controller
{
    public function __construct()
    {
    $this->middleware('auth');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $products= Product::orderBy('id','ASC')->paginate(5);
        return view('products.index', compact('products'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('products.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ProductRequest $request)
    {
        $product = new Product;

        $product->file   = $request->file;
        $product->name   = $request->name;
        $product->short  = $request->short;
        $product->body   = $request->body;

        $product->save();

        //IMAGE
       if($request->file('file')){
           $path = Storage::disk('public')->put('image', $request->file('file'));
           $product->fill(['file' => asset($path)])->save();
       }

        return redirect()->route('products.index')->with('info', 'El producto fue guardado');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $product = Product::find($id);
        return view('products.show', compact('product'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $product = Product::find($id);
        return view('products.edit', compact('product'));

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(ProductRequest $request, $id)
    {
    
        $product = Product::find($id);

        //IMAGE
       if($request->file('file')){
           $path = Storage::disk('public')->put('image', $request->file('file'));
           $product->fill(['file' => asset($path)])->save();
       }

        $product ->name   =   $request->name;
        $product ->short    =   $request->short;
        $product ->body    =   $request->body;

        $product->save();

        return redirect()->route('products.index')->with('info', 'El producto fue actualizado');
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $product = Product::find($id);
        $product->delete();

      return back()->with('info','El producto fue eliminado');

    }
}
