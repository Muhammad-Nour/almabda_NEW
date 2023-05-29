@extends('layouts.admin_app')

@section('title', __('site.slider'))

@section('css')
@stop

@section('js')
@stop


@section('title-page',__('site.slider'))

@section('content')

<!-- Main content -->
<div class="main-stage sliders">
	<div class="row">
		<div class="col-md-7 m-auto">
			@include('partial.alerts')
			<div class="card card-info">
				<div class="card-header">
					<h3 class="card-title">{{__('site.add_data')}}</h3>
				</div>
				<!-- /.card-header -->
				<!-- form start -->
				<form class="form-horizontal prevent-multiple-submits" action="{{route('sliders.store')}}" method="post" enctype="multipart/form-data">
					{{ csrf_field() }}
					<div class="card-body">
						<div class="form-group row">
							<label for="title_ar" class="col-sm-2 col-form-label">{{__('site.title_ar')}}</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="title_ar" placeholder="{{__('site.title_ar')}}" value="{{old('title_ar')}}">
							</div>
						</div>
						<div class="form-group row">
							<label for="title_en" class="col-sm-2 col-form-label">{{__('site.title_en')}}</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="title_en" placeholder="{{__('site.title_en')}}" value="{{old('title_en')}}">
							</div>
						</div>
						<div class="form-group row">
							<label for="description_ar" class="col-sm-2 col-form-label">{{__('site.description_ar')}}</label>
							<div class="col-sm-10">
								<textarea class="form-control" name="description_ar" id="description" placeholder="{{__('site.description_ar')}}" value="{{old('description_ar')}}" required></textarea>
							</div>
						</div>
						<div class="form-group row">
							<label for="description_en" class="col-sm-2 col-form-label">{{__('site.description_en')}}</label>
							<div class="col-sm-10">
								<textarea class="form-control" name="description_en" id="description" placeholder="{{__('site.description_en')}}" value="{{old('description_en')}}" required></textarea>
							</div>
						</div>
						<div class="form-group row">
							<label for="image" class="col-sm-2 col-form-label">{{__('site.image')}}</label>
							<div class="col-sm-10">
								<input type="file" class="form-control" name="image">
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