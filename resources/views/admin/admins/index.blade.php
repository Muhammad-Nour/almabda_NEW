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
		<div class="col-md-11 m-auto">
			@include('partial.alerts')
			@if($admins->count() > 0)
			<div class="row">
				@foreach($admins as $admin)
				<div class="col-md-12 single-row">
			<div class="card">
				<div class="card-body">
					<div class="row">
						<div class="col-6 col-md-2">
							<p class="key">{{__('site.code')}}</p>
							<p class="value">{{$admin->id}}</p>
						</div>
						<div class="col-6 col-md-2">
							<p class="key">{{__('site.name')}}</p>
							<p class="value">{{$admin->name}}</p>
						</div>
						<div class="col-6 col-md-2">
							<p class="key">{{__('site.status')}}</p>
							<p class="value">{{$admin->getStatus()}}</p>
						</div>
						<div class="col-6 col-md-2">
							<p class="key">{{__('site.roles')}}</p>
							@if (!empty($admin->roles_name))
							@foreach ($admin->getRoleNames() as $v)
							<label class="badge badge-success">{{ $v }}</label>
							@endforeach
							@endif
						</div>
						@can('edit')
						<div class="col-6 col-md-2">
							<p class="key">{{__('site.edit')}}</p>
							<a href="{{route('admins.edit',$admin->id)}}" class="btn btn-warning"><i class="fa fa-edit"></i></a>
						</div>
						@endcan
						@can('delete')
						<div class="col-6 col-md-2">
							<p class="key">{{__('site.delete')}}</p>
							<form action="{{route('admins.destroy', $admin->id)}}" method="post">
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
	{{ $admins->links() }}
</div>
</div>
</div>

@stop