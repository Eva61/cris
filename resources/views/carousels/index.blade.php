@extends('layouts.app')

@section('content')    
<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <h2>
                Listado de Carousel<a href="{{ route('carousels.create') }}" class="btn btn-primary float-right">Nuevo</a>
            </h2>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-4">
        </div>
        <div class="col-lg-4">
        </div>
        <div class="col-lg-4">
            @include('carousels.fragment.aside')
        </div>
    </div>
    <div class="row">
        <div class=col-lg-12>
                 <br>
                     @include('carousels.fragment.info')
                 <br>
               <table class="table table-hover table-striped">
                    <thead>
                         <th>Foto</th>
                         <th>Titulo</th>
                         <th>Descripción Corta</th>
                         <th colspan="3">Acciones</th>
                    </thead>
                    <tbody>
                         @foreach($carousels as $carousel)
                         <tr>
                              <td>
                                  @if($carousel->file)
                                         <img src="{{ $carousel->file }}" class="img-responsive" width="150" height="100">
                                     @endif
                              </td>
          
                              <td>
                                <strong>{{ $carousel->title }}</strong>
                                
                              </td>
                              <td>{{ $carousel->description }}</td>
                              <td>
                                   <a class="btn btn-link" href="{{ route('carousels.show', $carousel->id) }}">Ver</a>
                              </td>
                              <td>
                                   <a class="btn btn-link" href="{{ route('carousels.edit', $carousel->id) }}">Editar</a>
                              </td>
                              <td>
                                   <form action="{{ route('carousels.destroy', $carousel->id) }}"method="POST">
                                        {{ csrf_field() }}
                                        <input type="hidden" name="_method" value="DELETE">
                                        <button class="btn btn-link">Borrar</button>
                                   </form>
                              </td>
                         </tr>
                         @endforeach
                    </tbody>
               </table>
               {!! $carousels->render() !!}
          </div>
     </div>
</div>
@endsection

