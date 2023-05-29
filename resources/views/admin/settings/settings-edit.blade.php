@extends('layouts.admin_app')

@section('title', __('site.settings'))

@section('css')
@stop

@section('js')
@stop


@section('title-page',__('site.settings'))

@section('content')

<!-- Main content -->
<div class="main-stage settings">
	<div class="row">
		<div class="col-md-7 m-auto">
			@include('partial.alerts')
			<div class="card card-info">
				<div class="card-header">
					<h3 class="card-title">{{__('site.update_data')}}</h3>
				</div>
				<!-- /.card-header -->
				<!-- form start -->
				<form class="form-horizontal" action="{{route('settings.update',$setting->id)}}" 
					method="post">
					@csrf
					{{ method_field('put') }}
					<div class="card-body">
						<div class="form-group row">
							<label for="key" class="col-sm-2 col-form-label">{{__('site.key')}}</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="key" id="key" 
								placeholder="{{__('site.key')}}" required 
								value="{{ isset($setting) ? $setting->key : ''}}">
							</div>
						</div>
					</div>

					<div class="card-body">
						<div class="form-group row">
							<label for="value" class="col-sm-2 col-form-label">{{__('site.value')}}</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="value" id="value" 
								placeholder="{{__('site.value')}}" required 
								value="{{ isset($setting) ? $setting->value : ''}}">
							</div>
						</div>
					</div>
					<!-- /.card-body -->
					<div class="card-footer">
						<button type="submit" class="btn btn-success">{{__('site.update')}}</button>
					</div>
					<!-- /.card-footer -->
				</form>
			</div>
		</div>
	</div>
</div>
@stop