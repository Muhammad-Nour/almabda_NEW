@extends('layouts.admin_app')

@section('title', __('site.categories'))

@section('css')
@stop

@section('js')
@stop


@section('title-page',__('site.categories'))

@section('content')

<!-- Main content -->
<div class="main-stage categories">
	<div class="row">
		<div class="col-md-7 m-auto">
			@include('partial.alerts')
			<div class="card card-info">
				<div class="card-header">
					<h3 class="card-title">{{__('site.add_data')}}</h3>
				</div>
				<!-- /.card-header -->
				<!-- form start -->
				<form class="form-horizontal prevent-multiple-submits" action="{{route('categories.store')}}" method="post">
					{{ csrf_field() }}
					<div class="card-body">
						<div class="form-group row">
							<label for="category-name" class="col-sm-2 col-form-label">{{__('site.name')}}</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="name" id="name" required 
								placeholder="{{__('site.name')}}" value="{{old('name')}}">
							</div>
						</div>
					</div>
					<!-- /.card-body -->
					<div class="card-footer">
						<button type="submit" class="btn btn-info prevent-multiple-submits">{{__('site.add')}}</button>
					</div>
					<!-- /.card-footer -->
				</form>
			</div>
		</div>
	</div>
</div>
@stop