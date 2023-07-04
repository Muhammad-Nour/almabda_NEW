@extends('layouts.admin_app')

@section('title', __('site.settings'))

@section('css')
@stop

@section('js')
@stop


@section('title-page', __('site.settings'))

@section('content')
<div class="main-stage settings">
	<div class="row">
		<div class="col-md-11 m-auto">
			@include('partial.alerts')

			@if($settings->count() > 0)
			<div class="row">
				@foreach($settings as $setting)
				<div class="col-md-12 single-row">
					<div class="card">
						<div class="card-body">
							<div class="row">
								<div class="col-6 col-md-2">
									<p class="key">{{__('site.code')}}</p>
									<p class="value">{{$setting->id}}</p>
								</div>
								<div class="col-6 col-md-3">
									<p class="key">{{__('site.key')}}</p>
									<p class="value">{{$setting->key}}</p>
								</div>
								<div class="col-6 col-md-3">
									<p class="key">{{__('site.value')}}</p>
									<p class="value">{{$setting->value}}</p>
								</div>
					

								<div class="col-6 col-md-2">
                                    <p class="key">{{__('site.actions')}}</p>
                                    <div class="actions-dropdown">
                                        <button type="button" class="btn btn-style btn-sm" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="fas fa-ellipsis-h"></i>
                                        </button>

                                        <div class="dropdown-menu">
                                            @can('edit')
                                            <a href="{{route('settings.edit',$setting->id)}}" class=" dropdown-item"><i class="fa fa-edit"> </i> {{__('site.edit')}}</a>
                                            @endcan
                                            @can('delete')
                                            <form action="{{route('settings.destroy', $setting->id)}}" method="POST" class="dropdown-item">
                                                @csrf
                                                {{ method_field('delete') }}
                                                <a href="" class="delete text-danger"> <i class="fa fa-trash-alt"> </i>   {{__('site.delete')}} </a>
                                            </form>
                                            @endcan
                                        </div>
                                    </div>
                                </div>
							</div>
						</div>
					</div>
				</div>
				@endforeach
			</div>
		</div>
		@endif
		@isset($paginate)
		{{ $settings->links() }}
		@endisset
	</div>
</div>
@stop
