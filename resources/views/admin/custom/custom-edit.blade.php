@extends('layouts.admin_app')

@section('title', __('site.customs'))

@section('css')
@stop

@section('js')
@stop


@section('title-page',__('site.customs'))

@section('content')

<!-- Main content -->
<div class="main-stage customs">
	<div class="row">
		<div class="col-md-7 m-auto">
			@include('partial.alerts')
			<div class="card">
				<div class="card-header">
					<h3 class="card-title">{{__('site.edit')}}</h3>
				</div>
				<!-- /.card-header -->
				<!-- form start -->
				<form action="{{route('customs.update',$custom->id)}}" 
					method="post" enctype='multipart/form-data'>
					@csrf
					{{ method_field('put') }}

					<div class="card-body">
						<div class="form-group">
							<label>{{__('site.description_ar')}}</label>
							<textarea class="form-control" name="description_ar" value="{{$custom->description_ar}}" required>{{$custom->description_ar}}</textarea>
						</div>
						<div class="form-group">
							<label>{{__('site.description_en')}}</label>
							<textarea class="form-control" name="description_en" value="{{$custom->description_en}}" required>{{$custom->description_en}}</textarea>
						</div>
					<div class="form-group">
						<strong>{{__('site.image')}}</strong>
						<img src="{{asset('gallery/'.$custom->photo)}}" style="width:100px;height:100px;">
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