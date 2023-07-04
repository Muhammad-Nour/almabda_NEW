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
					<h3 class="card-title">{{__('site.add_data')}}</h3>
				</div>
				<!-- /.card-header -->
				<!-- form start -->
				<form action="{{route('customs.store')}}" method="post">
					@csrf
					<div class="card-body">
						<div class="form-group row">
							<label class="col-sm-2 col-form-label">{{__('site.title_ar')}}</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="title_ar" required 
								value="{{old('title_ar')}}">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-sm-2 col-form-label">{{__('site.title_en')}}</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="title_en" required 
								value="{{old('title_en')}}">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-sm-2 col-form-label">{{__('site.description_ar')}}</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="description_ar" required 
								 value="{{old('description_ar')}}">
							</div>
						</div>

						<div class="form-group row">
							<label class="col-sm-2 col-form-label">{{__('site.description_en')}}</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="description_en" required 
								 value="{{old('description_en')}}">
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