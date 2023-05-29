@extends('layouts.admin_app')

@section('title', __('site.users'))

@section('css')
@stop

@section('js')
@stop

@section('title-page',__('site.users'))

@section('content')

<!-- Main content -->
<div class="main-stage admins">
	<div class="row">
		<div class="col-md-7 m-auto">
			@include('partial.alerts')
			<div class="card card-info">
				<div class="card-header">
					<h3 class="card-title">{{__('site.update_data')}}</h3>
				</div>
			<!-- /.card-header -->
			<!-- form start -->
			<form class="form-horizontal" action="{{route('admins.update',$admin->id)}}" method="post">
				@csrf
				{{method_field('put')}}
				<div class="card-body">

					<div class="form-group row">
						<label for="name" class="col-sm-3 col-form-label">{{__('site.name')}}</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" name="name" id="name" 
							placeholder="{{__('site.name')}}" value="{{$admin->name}}" required>
						</div>
					</div>

					<div class="form-group row">
						<label for="email" class="col-sm-3 col-form-label">{{__('site.email')}}</label>
						<div class="col-sm-9">
							<input type="email" class="form-control" name="email" id="email" 
							placeholder="{{__('site.email')}}" value="{{$admin->email}}" required>
						</div>		
					</div>

					<div class="form-group row">
						<label for="password" class="col-sm-3 col-form-label">{{__('site.password')}}</label>
						<div class="col-sm-9">
							<input type="password" class="form-control" name="password" id="password" 
							placeholder="{{__('site.password')}}" value="">
						</div>
					</div>

					<div class="form-group row">
						<label for="roles_name" class="col-sm-3 col-form-label">{{__('site.roles')}}</label>
						<div class="col-sm-9">
							{!! Form::select('roles_name[]', $roles,$adminRole, 
							array('class' => 'form-control','multiple'))
							!!}
						</div>
					</div>

					<div class="form-group row">
						<label for="status" class="col-sm-3 col-form-label">{{__('site.status')}}</label>
						<div class="col-sm-9">
							<select class="custom-select form-control-border col-sm-9" id="status" name="status" required>
								<option value="">{{__('site.select')}}</option>
								<option value="1" @if($admin->status == 1) selected @endif>مفعل</option>
								<option value="2" @if($admin->status == 2) selected @endif>غير مفعل</option>
							</select>
						</div>
					</div>
				</div>
				<!-- /.card-body -->
				<div class="card-footer">
					<button type="submit" class="btn btn-info">{{__('site.update')}}</button>
				</div>
				<!-- /.card-footer -->
			</form>
		</div>
	</div>
</div>
</div>
@stop