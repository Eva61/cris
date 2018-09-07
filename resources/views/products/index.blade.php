@extends('layouts.app')

@section('content')    
<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <h2>
                Listado de productos<a href="{{ route('products.create') }}" class="btn btn-primary float-right">Nuevo</a>
            </h2>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-4">
        </div>
        <div class="col-lg-4">
        </div>
        <div class="col-lg-4">
            @include('products.fragment.aside')
        </div>
    </div>
    <div class="row">
        <div class=col-lg-12>
                 <br>
                     @include('products.fragment.info')
                 <br>
               <table class="table table-hover table-striped">
                    <thead>
                         <th>ID</th>
                         <th>Foto</th>
                         <th>Producto</th>
                         <th>Descripción Corta</th>
                         <th colspan="3">Acciones</th>
                    </thead>
                    <tbody>
                         @foreach($products as $product)
                         <tr>
                              <td>{{ $product->id }}</td>
                              <td>
                                  @if($product->file)
                                         <img src="{{ $product->file }}" class="img-responsive" width="150" height="100">
                                     @endif
                              </td>
          
                              <td>
                                <strong>{{ $product->name }}</strong>
                                
                              </td>
                              <td>{{ $product->short }}</td>
                              <td>
                                   <a class="btn btn-link" href="{{ route('products.show', $product->id) }}">Ver</a>
                              </td>
                              <td>
                                   <a class="btn btn-link" href="{{ route('products.edit', $product->id) }}">Editar</a>
                              </td>
                              <td>
                                   <form action="{{ route('products.destroy', $product->id) }}"method="POST">
                                        {{ csrf_field() }}
                                        <input type="hidden" name="_method" value="DELETE">
                                        <button class="btn btn-link">Borrar</button>
                                   </form>
                              </td>
                         </tr>
                         @endforeach
                    </tbody>
               </table>
               {!! $products->render() !!}
          </div>
     </div>
</div>
@endsection

