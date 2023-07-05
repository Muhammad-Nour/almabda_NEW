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
					<h3 class="card-title">{{__('site.edit')}}</h3>
				</div>
				<!-- /.card-header -->
				<!-- form start -->
				<form action="{{route('contacts.update',$contact->id)}}" 
					method="post">
					@csrf
					{{ method_field('put') }}
					<div class="card-body">
						<div class="form-group row">
							<label class="col-sm-2 col-form-label">{{__('site.name')}}</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="name" required 
								value="{{ isset($contact) ? $contact->name : ''}}">
							</div>
						</div>
					</div>
					<div class="card-body">
						<div class="form-group row">
							<label class="col-sm-2 col-form-label">{{__('site.phone')}}</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="phone" required 
								value="{{ isset($contact) ? $contact->phone : ''}}">
							</div>
						</div>
					</div>
					<div class="card-body">
						<div class="form-group row">
							<label class="col-sm-2 col-form-label">{{__('site.email')}}</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="email" required 
								value="{{ isset($contact) ? $contact->email : ''}}">
							</div>
						</div>
					</div>
					<div class="card-body">
						<div class="form-group row">
							<label class="col-sm-2 col-form-label">{{__('site.subject')}}</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="subject" required 
								value="{{ isset($contact) ? $contact->subject : ''}}">
							</div>
						</div>
					</div>
					<div class="card-body">
						<div class="form-group row">
							<label class="col-sm-2 col-form-label">{{__('site.message')}}</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="message" required 
								value="{{ isset($contact) ? $contact->message : ''}}">
							</div>
						</div>
					</div>
					<div class="card-body">
						<div class="form-group row">
							<label class="col-sm-2 col-form-label">{{__('site.notes')}}</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="notes" required 
								value="{{ isset($contact) ? $contact->notes : ''}}">
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