@extends('layouts.admin_app')

@section('title', __('site.roles'))

@section('css')
@stop

@section('js')
@stop

@section('title-page',__('site.roles'))

@section('content')

<!-- Main content -->
<div class="main-stage roles">
	<div class="row">
		<div class="col-md-7 m-auto">
			@include('partial.alerts')
			<div class="card card-info">
				<div class="card-header">
					<h3 class="card-title">{{__('site.update_data')}}</h3>
				</div>
			<!-- /.card-header -->
			<!-- form start -->
			<form class="form-horizontal" action="{{route('roles.update',$role->id)}}" 
		    	method="post">
				@csrf
				{{method_field('put')}}
				<div class="card-body">
					<div class="form-group row">
						<label for="name" class="col-sm-3 col-form-label">{{__('site.name')}}</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" name="name" id="name" placeholder="{{__('site.name')}}" value="{{$role->name}}" required>
						</div>
					</div>
					<div class="row">
						{{__('site.roles')}} | {{$role->name}}
						<ul>
							<li>
								@foreach($permission as $value)
								<label>{{ Form::checkbox('permission[]', $value->id, in_array($value->id, $rolePermissions) ? true : false, array('class' => 'name')) }}
									{{ $value->name }}</label>
									<br />
									@endforeach
								</li>
							</ul>
							<div class="col-xs-12 col-sm-12 col-md-12 text-center">
								<button type="submit" class="btn btn-primary">{{__('site.update')}}</button>
							</div>
						</div>
					</div>
					<!-- /.card-footer -->
				</form>
			</div>
		</div>
	</div>
</div>
	@stop
