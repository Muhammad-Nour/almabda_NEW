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
			<div class="card">
				<div class="card-header">
					<h3 class="card-title">{{__('site.add_data')}}</h3>
				</div>
				<!-- /.card-header -->
				<!-- form start -->
				<form action="{{route('roles.store')}}" method="post">
					@csrf
					<div class="card-body">
						<div class="form-group">
							<label>{{__('site.name')}}</label>
							<input type="text" class="form-control" name="name"value="{{old('name')}}" required>
						</div>
						<div class="form-group">
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