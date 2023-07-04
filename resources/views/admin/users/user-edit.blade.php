@extends('layouts.admin_app')

@section('title', __('site.users'))

@section('css')
@stop

@section('js')
@stop

@section('title-page',__('site.users'))

@section('content')

<!-- Main content -->
<div class="main-stage users">
	<div class="row">
		<div class="col-md-7 m-auto">
			@include('partial.alerts')
			<div class="card">
				<div class="card-header">
					<h3 class="card-title">{{__('site.update_data')}}</h3>
				</div>
			<!-- /.card-header -->
			<!-- form start -->
			<form action="{{route('users.update',$user->id)}}" method="post">
				@csrf
				{{method_field('put')}}
				<div class="card-body">

					<div class="form-group row">
						<label>{{__('site.name')}}</label>
						
							<input type="text" class="form-control" name="name" value="{{$user->name}}" required>
					
					</div>

					<div class="form-group row">
						<label>{{__('site.email')}}</label>
					
							<input type="email" class="form-control" name="email" value="{{$user->email}}" required>
					
					</div>

					<div class="form-group row">
						<label>{{__('site.password')}}</label>
				
							<input type="password" class="form-control" name="password" value="">
		
					</div>

					<div class="form-group row">
						<label>{{__('site.roles')}}</label>
				
							{!! Form::select('roles_name[]', $roles,$userRole, 
							array('class' => 'form-control','multiple'))
							!!}
		
					</div>

					<div class="form-group row">
						<label>{{__('site.status')}}</label>
				
							<select class="custom-select" name="status" required>
								<option value="">{{__('site.select')}}</option>
								<option value="1" @if($user->status == 1) selected @endif>مفعل</option>
								<option value="2" @if($user->status == 2) selected @endif>غير مفعل</option>
							</select>
			
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