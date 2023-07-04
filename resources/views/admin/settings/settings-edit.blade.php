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
			<div class="card">
				<div class="card-header">
					<h3 class="card-title">{{__('site.update_data')}}</h3>
				</div>
				<!-- /.card-header -->
				<!-- form start -->
				<form action="{{route('settings.update',$setting->id)}}" 
					method="post">
					@csrf
					{{ method_field('put') }}
					<div class="card-body">
						<div class="form-group row">
							<label class="col-sm-2 col-form-label">{{__('site.key')}}</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="key" required 
								value="{{ isset($setting) ? $setting->key : ''}}">
							</div>
						</div>
					</div>

					<div class="card-body">
						<div class="form-group row">
							<label class="col-sm-2 col-form-label">{{__('site.value')}}</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="value" required 
								value="{{ isset($setting) ? $setting->value : ''}}">
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