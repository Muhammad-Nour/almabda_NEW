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
					<h3 class="card-title">{{__('site.edit')}}</h3>
				</div>
				<!-- /.card-header -->
				<!-- form start -->
				<form action="{{route('projects.update',$project->id)}}" 
					method="post" enctype="multipart/form-data">
					@csrf
					{{ method_field('put') }}
					<div class="card-body">
						<div class="form-group">
							<label>{{__('site.name_ar')}}</label>
						
								<input type="text" class="form-control" name="name_ar" required 
								value="{{ isset($project) ? $project->name_ar : ''}}">
						</div>
						<div class="form-group">
							<label>{{__('site.name_en')}}</label>
								<input type="text" class="form-control" name="name_en" required 
								value="{{ isset($project) ? $project->name_en : ''}}">
						</div>
						<div class="form-group">
						<strong>{{__('site.image')}}</strong>
						<img src="{{asset('gallery/'.$project->photo)}}" style="width:100px;height:100px;">
						<input type="file" class="form-control" name="photo">
					</div>
					</div>
					<!-- /.card-body -->
					<div class="card-footer">
						<button type="submit" class="btn btn-style">{{__('site.update')}}</button>
					</div>
					<!-- /.card-footer -->
				</form>
			</div>
		</div>
	</div>
</div>
@stop