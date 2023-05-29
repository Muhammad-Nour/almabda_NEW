@extends('layouts.admin_app')

@section('title', __('site.categories'))

@section('css')
@stop

@section('js')
@stop


@section('title-page', __('site.categories'))

@section('content')
<div class="main-stage categories">
	<div class="row">
		<div class="col-md-11 m-auto">
			@include('partial.alerts')

			@if($categories->count() > 0)
			<div class="row">
				@foreach($categories as $category)
				<div class="col-md-6 single-row">
					<div class="card">
						<div class="card-body">
							<div class="row">
								<div class="col-6 col-md-3">
									<p class="key">{{__('site.code')}}</p>
									<p class="value">{{$category->id}}</p>
								</div>
								<div class="col-6 col-md-3">
									<p class="key">{{__('site.name')}}</p>
									<p class="value">{{$category->name}}</p>
								</div>
								@can('edit')
								<div class="col-6 col-md-3">
									<p class="key">{{__('site.edit')}}</p>
									<a href="{{route('categories.edit',$category->id)}}" class="btn btn-warning"><i class="fa fa-edit"></i></a>
								</div>
								@endcan
								@can('delete')
								<div class="col-6 col-md-3">
									<p class="key">{{__('site.delete')}}</p>
									<form action="{{route('categories.destroy', $category->id)}}" method="post">
										@csrf
										{{ method_field('delete') }}
										<button type="submit" class="btn btn-danger delete"><i class="fa fa-trash-alt"></i>
										</button>
									</form>
								</div>
								@endcan
							</div>
						</div>
					</div>
				</div>
				@endforeach
			</div>
		</div>
		@endif
		@isset($paginate)
		{{ $categories->links() }}
		@endisset
	</div>
</div>
@stop
