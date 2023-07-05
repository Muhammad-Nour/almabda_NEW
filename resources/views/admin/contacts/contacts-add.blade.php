@extends('layouts.admin_app')

@section('title', __('site.contacts'))

@section('css')
@stop

@section('js')
@stop


@section('title-page',__('site.contacts'))

@section('content')

<!-- Main content -->
<div class="main-stage contacts">
	<div class="row">
		<div class="col-md-7 m-auto">
			@include('partial.alerts')
			<div class="card">
				<div class="card-header">
					<h3 class="card-title">{{__('site.add_data')}}</h3>
				</div>
				<!-- /.card-header -->
				<!-- form start -->
				<form action="{{route('contacts.store')}}" method="post">
					@csrf
					<div class="card-body">
						<div class="form-group row">
							<label class="col-sm-2 col-form-label">{{__('site.name')}}</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="name" required 
								value="{{old('name')}}">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-sm-2 col-form-label">{{__('site.phone')}}</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="phone" required 
								value="{{old('phone')}}">
							</div>
						</div>

						<div class="form-group row">
							<label class="col-sm-2 col-form-label">{{__('site.email')}}</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="email" required 
								value="{{old('email')}}">
							</div>
						</div>

						<div class="form-group row">
							<label class="col-sm-2 col-form-label">{{__('site.subject')}}</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="subject" required 
								value="{{old('subject')}}">
							</div>
						</div>

						<div class="form-group row">
							<label class="col-sm-2 col-form-label">{{__('site.message')}}</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="message" required 
								value="{{old('message')}}">
							</div>
						</div>

						<div class="form-group row">
							<label class="col-sm-2 col-form-label">{{__('site.notes')}}</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="notes" required 
								value="{{old('notes')}}">
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