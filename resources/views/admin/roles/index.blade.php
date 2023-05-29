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
		<div class="col-md-11 m-auto">
			@include('partial.alerts')
			@if($roles->count() > 0)
			<div class="row">
				@foreach($roles as $role)
				<div class="col-md-12 single-row">
			<div class="card">
				<div class="card-body">
					<div class="row">
						<div class="col-6 col-md-2">
							<p class="key">{{__('site.code')}}</p>
							<p class="value">{{$role->id}}</p>
						</div>
						<div class="col-6 col-md-2">
							<p class="key">{{__('site.name')}}</p>
							<p class="value">{{$role->name}}</p>
						</div>
						@can('show')
						<div class="col-6 col-md-2">
							<p class="key">{{__('site.show')}}</p>
							<a href="{{route('roles.show',$role->id)}}" class="btn btn-info"><i class="fa fa-eye"></i></a>
						</div>
						@endcan
						@can('edit')
						<div class="col-6 col-md-2">
							<p class="key">{{__('site.edit')}}</p>
							<a href="{{route('roles.edit',$role->id)}}" class="btn btn-warning"><i class="fa fa-edit"></i></a>
						</div>
						@endcan
						@can('delete')
						<div class="col-6 col-md-2">
							<p class="key">{{__('site.delete')}}</p>
							<form action="{{route('roles.destroy', $role->id)}}" method="post">
								@csrf
								{{ method_field('delete') }}
								<button type="submit" class="btn btn-danger delete"><i class="fa fa-trash-alt"></i>
								</button>
							</form>
						</div>
						@endcan
					</div>
				</div>
			</div>
		</div>
		@endforeach
	</div>
	@endif
	{{ $roles->links() }}
</div>
</div>
</div>
@stop