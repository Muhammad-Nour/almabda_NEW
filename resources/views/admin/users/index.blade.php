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
		<div class="col-md-11 m-auto">
			@include('partial.alerts')
			@if($users->count() > 0)
			<div class="row">
				@foreach($users as $user)
				<div class="col-md-12 single-row">
			<div class="card">
				<div class="card-body">
					<div class="row">
						<div class="col-6 col-md-2">
							<p class="key">{{__('site.code')}}</p>
							<p class="value">{{$user->id}}</p>
						</div>
						<div class="col-6 col-md-2">
							<p class="key">{{__('site.name')}}</p>
							<p class="value">{{$user->name}}</p>
						</div>
						<div class="col-6 col-md-2">
							<p class="key">{{__('site.status')}}</p>
							<p class="value">{{$user->getStatus()}}</p>
						</div>
						<div class="col-6 col-md-2">
							<p class="key">{{__('site.roles')}}</p>
							@if (!empty($user->roles_name))
							@foreach ($user->getRoleNames() as $v)
							<label class="badge badge-success">{{ $v }}</label>
							@endforeach
							@endif
						</div>
						@can('edit')
						<div class="col-6 col-md-2">
							<p class="key">{{__('site.edit')}}</p>
							<a href="{{route('users.edit',$user->id)}}" class="btn btn-warning"><i class="fa fa-edit"></i></a>
						</div>
						@endcan
						@can('delete')
						<div class="col-6 col-md-2">
							<p class="key">{{__('site.delete')}}</p>
							<form action="{{route('users.destroy', $user->id)}}" method="post">
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
	{{ $users->links() }}
</div>
</div>
</div>

@stop