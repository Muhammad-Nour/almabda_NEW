@extends('layouts.admin_app')

@section('title', __('site.projects'))

@section('css')
@stop

@section('js')
@stop


@section('title-page',__('site.projects'))

@section('content')

<!-- Main content -->
<div class="main-stage projects">
	<div class="row">
		<div class="col-md-7 m-auto">
			@include('partial.alerts')
			<div class="card">
				<div class="card-header">
					<h3 class="card-title">{{__('site.add_data')}}</h3>
				</div>
				<!-- /.card-header -->
				<!-- form start -->
				<form action="{{route('projects.store')}}" method="post" enctype="multipart/form-data">
					@csrf
					<div class="card-body">
						<div class="form-group">
							<label>{{__('site.name_ar')}}</label>
							<input type="text" class="form-control" name="name_ar" required 
							value="{{old('name_ar')}}">
						</div>
						<div class="form-group">
							<label>{{__('site.name_en')}}</label>
							<input type="text" class="form-control" name="name_en" required 
							value="{{old('name_en')}}">
						</div>
						<div class="form-group">
							<label>{{__('site.image')}}</label>
							<input type="file" class="form-control" name="photo">
						</div>
						<div class="form-group ">
							<label>{{__('site.add_gallery')}}</label>
							<input type="file" class="form-control" name="gallery[]" multiple>
						</div>
					</div>
					<!-- /.card-body -->
					<div class="card-footer">
						<button type="submit" class="btn btn-style">
							<i class="fa fa-plus"></i> 
							{{__('site.add')}}
						</button>
					</div>
					<!-- /.card-footer -->
				</form>
			</div>
		</div>
	</div>
</div>
@stop