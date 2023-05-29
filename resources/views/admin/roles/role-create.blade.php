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
					<h3 class="card-title">{{__('site.add_data')}}</h3>
				</div>
			<!-- /.card-header -->
			<!-- form start -->
			<form class="form-horizontal prevent-multiple-submits" action="{{route('roles.store')}}" method="post">
				@csrf
				<div class="card-body">

					<div class="form-group row">
						<label for="name" class="col-sm-3 col-form-label">{{__('site.name')}}</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" name="name" id="name" 
							placeholder="{{__('site.name')}}" value="{{old('name')}}" required>
						</div>
					</div>

					<div class="form-group row">
						<label for="permission">{{__('site.roles')}}</label>
						<ul>
							<li style="display: inline;">
								@foreach($permission as $value)
								<label>
									{{ Form::checkbox('permission[]', $value->id, false, array('class' => 'name')) }}
									{{ $value->name }}
								</label>
								@endforeach
							</li>
						</ul>
					</div>
				</div>
				<!-- /.card-body -->
				<div class="card-footer">
					<button type="submit" class="btn btn-info prevent-multiple-submits">{{__('site.add')}}</button>
				</div>
				<!-- /.card-footer -->
			</form>
		</div>
	</div>
</div>
</div>
@stop