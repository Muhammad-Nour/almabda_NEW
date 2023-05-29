@extends('layouts.admin_app')

@section('title', __('site.slider'))

@section('css')
@stop

@section('js')
@stop


@section('title-page', __('site.slider'))

@section('content')
<div class="main-stage sliders">
	<div class="row">
		<div class="col-md-11 m-auto">
			@include('partial.alerts')

			@if($sliders->count() > 0)
			<div class="row">
				@foreach($sliders as $slider)
				<div class="col-md-12 single-row">
					<div class="card">
						<div class="card-body">
							<div class="row">
								<div class="col-6 col-md-1">
									<p class="key">{{__('site.code')}}</p>
									<p class="value">{{$slider->id}}</p>
								</div>
								<div class="col-6 col-md-3" style="overflow: hidden;">
									<p class="key">{{__('site.image')}}</p>
									<img src="{{asset('gallery/'.$slider->photo)}}" style="width:100%;height:100%;">
								</div>
								<div class="col-6 col-md-3">
									<p class="key">{{__('site.title')}}</p>
									<p class="value">{{$slider->title_ar}}</p>
								</div>
								<div class="col-6 col-md-3">
									<p class="key">{{__('site.description')}}</p>
									<p class="value">{{$slider->description_ar}}</p>
								</div>
								@can('edit')
								<div class="col-6 col-md-1">
									<p class="key">{{__('site.edit')}}</p>
									<a href="{{route('sliders.edit',$slider->id)}}" class="btn btn-warning"><i class="fa fa-edit"></i></a>
								</div>
								@endcan
								@can('delete')
								<div class="col-6 col-md-1">
									<p class="key">{{__('site.delete')}}</p>
									<form action="{{route('sliders.destroy', $slider->id)}}" method="post">
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
		</div>
		@endif
		@isset($paginate)
		{{ $sliders->links() }}
		@endisset
	</div>
</div>
@stop
