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
						<div class="form-group">
							<label>{{__('site.name')}}</label>
							<input type="text" class="form-control" name="name" required 
							value="{{ isset($contact) ? $contact->name : ''}}">
						</div>
						<div class="form-group">
							<label>{{__('site.phone')}}</label>
							<input type="text" class="form-control" name="phone" required 
							value="{{ isset($contact) ? $contact->phone : ''}}">
						</div>
						<div class="form-group">
							<label>{{__('site.email')}}</label>
							<input type="text" class="form-control" name="email" required 
							value="{{ isset($contact) ? $contact->email : ''}}">
						</div>
						<div class="form-group">
							<label>{{__('site.subject')}}</label>
							<input type="text" class="form-control" name="subject" required 
							value="{{ isset($contact) ? $contact->subject : ''}}">
						</div>
						<div class="form-group">
							<label>{{__('site.message')}}</label>
							<input type="text" class="form-control" name="message" required 
							value="{{ isset($contact) ? $contact->message : ''}}">
						</div>
						<div class="form-group">
							<label>{{__('site.notes')}}</label>
							<input type="text" class="form-control" name="notes" required 
							value="{{ isset($contact) ? $contact->notes : ''}}">
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