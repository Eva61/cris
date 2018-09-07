@extends('layouts.app')

@section('content')	
<div class="container mt-5">
	<div class="row">
		<div class=col-lg-10>
			<img src="{{ $carousel->file }}" alt="">
			<h2>
				{{ $carousel->title }}
				<a href="{{ route('carousels.edit', $carousel->id) }}" class="btn btn-primary float-right">Editar</a>
			</h2>
			<p>
				{{ $carousel->description }}
			</p>
				
		</div>
		<div class="col-sm-2">
			@include('carousels.fragment.aside')
		</div>

	</div>
</div>
@endsection

