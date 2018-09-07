@extends('layouts.app')

@section('content') 
<div class="container mt-5">
     <div class="row">
     <div class=col-lg-8>
          <h2>
               Nuevo productos
                    <a href="{{ route('products.index') }}" class="btn btn-primary float-right">Listado</a>
          </h2>
          <br> 
          @include('products.fragment.error')

          {!! Form::open(['route' => 'products.store', 'files' => true]) !!}

               @include('products.fragment.form')
             
          {!! Form::close() !!}
     </div>
     <div class="col-sm-4">
              @include('products.fragment.aside')
     </div>
     </div>
</div>
@endsection

