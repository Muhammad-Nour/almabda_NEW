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
			<div class="card">
				<div class="card-header">
					<h3 class="card-title">{{__('site.edit')}}</h3>
				</div>
				<!-- /.card-header -->
				<!-- form start -->
				<form action="{{route('categories.update',$category->id)}}" 
					method="post">
					@csrf
					{{ method_field('put') }}
					<div class="card-body">
						<div class="form-group row">
							<label class="col-sm-2 col-form-label">{{__('site.name_ar')}}</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="name_ar" required 
								value="{{ isset($category) ? $category->name_ar : ''}}">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-sm-2 col-form-label">{{__('site.name_en')}}</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="name_en" required 
								value="{{ isset($category) ? $category->name_en : ''}}">
							</div>
						</div>
					</div>
					<!-- /.card-body -->
					<div class="card-footer">
						<button type="submit" class="btn btn-style">
							{{__('site.update')}}
						</button>
					</div>
					<!-- /.card-footer -->
				</form>
			</div>
		</div>
	</div>
</div>
@stop