@extends('layouts.admin_app')

@section('title', __('site.partners'))

@section('css')
@stop

@section('js')
@stop


@section('title-page',__('site.partners'))

@section('content')

<!-- Main content -->
<div class="main-stage partners">
	<div class="row">
		<div class="col-md-7 m-auto">
			@include('partial.alerts')
			<div class="card">
				<div class="card-header">
					<h3 class="card-title">{{__('site.edit')}}</h3>
				</div>
				<!-- /.card-header -->
				<!-- form start -->
				<form action="{{route('partners.update',$partner->id)}}" 
					method="post">
					@csrf
					{{ method_field('put') }}
					<div class="card-body">
						<div class="form-group row">
							<label class="col-sm-2 col-form-label">{{__('site.name_ar')}}</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="name_ar" required 
								value="{{ isset($partner) ? $partner->name_ar : ''}}">
							</div>
						</div>
					</div>
					<div class="card-body">
						<div class="form-group row">
							<label class="col-sm-2 col-form-label">{{__('site.name_en')}}</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="name_en" required 
								value="{{ isset($partner) ? $partner->name_en : ''}}">
							</div>
						</div>
					</div>

					<div class="col-6 col-md-5">
									<strong>{{__('site.image')}}</strong>
									<img src="{{asset('gallery/'.$partner->photo)}}" style="width:100px;height:100px;">
									<input type="file" class="form-control" name="photo">
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