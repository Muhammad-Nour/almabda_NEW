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
					<h3 class="card-title">{{__('site.add_data')}}</h3>
				</div>
				<!-- /.card-header -->
				<!-- form start -->
				<form action="{{route('partners.store')}}" method="post">
					@csrf
					<div class="card-body">
						<div class="form-group row">
							<label class="col-sm-2 col-form-label">{{__('site.name_ar')}}</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="name_ar" required 
								value="{{old('name_ar')}}">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-sm-2 col-form-label">{{__('site.name_en')}}</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="name_en" required 
								value="{{old('name_en')}}">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-sm-2 col-form-label">{{__('site.image')}}</label>
							<div class="col-sm-10">
								<input type="file" class="form-control" name="photo">
							</div>
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