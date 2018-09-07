@extends('layouts.app')

@section('content')    
<div class="container mt-5">
    <div class="row">
    <div class=col-lg-8>
        <h2>
               Editar carrusel
                     <a href="{{ route('carousels.index') }}" class="btn btn-primary float-right">Listado</a>
         </h2>
         <br>
         @include('carousels.fragment.error')

         {!! Form::model($carousel, ['route' => ['carousels.update', $carousel->id], 'method' => 'PUT', 'files' => true]) !!}

              @include('carousels.fragment.form')

         {!! Form::close() !!}
     </div>
     <div class="col-sm-4">
                 @include('carousels.fragment.aside')
     </div>
    </div>
</div>
@endsection

