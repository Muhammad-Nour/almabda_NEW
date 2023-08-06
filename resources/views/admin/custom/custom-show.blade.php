@extends('layouts.admin_app')

@section('title', __('site.customs'))

@section('css')
@stop

@section('js')
@stop


@section('title-page', __('site.customs'))

@section('content')
<div class="main-stage customs">
	<div class="row">
		<div class="col-md-11 m-auto">
			@include('partial.alerts')

			@if($customs->count() > 0)
			<div class="row">
				@foreach($customs as $custom)
				<div class="col-md-12 single-row">
					<div class="card">
						<div class="card-body">
							<div class="row">
								<div class="col-6 col-md-4">
									<p class="key">{{__('site.code')}}</p>
									<p class="value">{{$custom->code}}</p>
								</div>

								<div class="col-6 col-md-4">
									<p class="key">{{__('site.attachment')}}</p>
									<img src="{{asset('gallery/'.$custom->photo)}}"style="width:75px;height:75px;">
								</div>
								@can('edit_customs')
								<div class="col-6 col-md-4">
									<p class="key">{{__('site.edit')}}</p>
									<a href="{{route('customs.edit',$custom->id)}}" class="btn btn-warning">
										<i class="fa fa-edit"></i></a>
									</div>
									@endcan
									<div class="col-6 col-md-6">
									<p class="key">{{__('site.description_ar')}}</p>
									<p class="value">{{$custom->description_ar}}</p>
								</div>
								<div class="col-6 col-md-6">
									<p class="key">{{__('site.description_en')}}</p>
									<p class="value">{{$custom->description_en}}</p>
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
			{{ $customs->links() }}
			@endisset
		</div>
	</div>
	@stop
