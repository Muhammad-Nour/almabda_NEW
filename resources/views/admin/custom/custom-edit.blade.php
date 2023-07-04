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
					<h3 class="card-title">{{__('site.update_data')}}</h3>
				</div>
				<!-- /.card-header -->
				<!-- form start -->
				<form action="{{route('customs.update',$custom->id)}}" 
					method="post">
					@csrf
					{{ method_field('put') }}
					<div class="card-body">
						<div class="form-group row">
							<label class="col-sm-2 col-form-label">{{__('site.title_ar')}}</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="title_ar" required 
								value="{{ isset($custom) ? $custom->title_ar : ''}}">
							</div>
						</div>
					</div>
					<div class="card-body">
						<div class="form-group row">
							<label class="col-sm-2 col-form-label">{{__('site.title_en')}}</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="title_en" required 
								value="{{ isset($custom) ? $custom->title_en : ''}}">
							</div>
						</div>
					</div>

					<div class="card-body">
						<div class="form-group row">
							<label class="col-sm-2 col-form-label">{{__('site.description_ar')}}</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="description_ar" required 
								value="{{ isset($custom) ? $custom->description_ar : ''}}">
							</div>
						</div>
					</div>

					<div class="card-body">
						<div class="form-group row">
							<label class="col-sm-2 col-form-label">{{__('site.description_en')}}</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="description_en" required 
								value="{{ isset($custom) ? $custom->description_en : ''}}">
							</div>
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