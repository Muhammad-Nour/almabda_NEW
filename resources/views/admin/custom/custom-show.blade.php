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
								<div class="col-6 col-md-12">
									<p class="key">{{__('site.code')}}</p>
									<p class="value">{{$custom->code}}</p>
								</div>
								<div class="col-6 col-md-6">
									<p class="key">{{__('site.description_ar')}}</p>
									<p class="value">{{$custom->description_ar}}</p>
								</div>
								<div class="col-6 col-md-6">
									<p class="key">{{__('site.description_en')}}</p>
									<p class="value">{{$custom->description_en}}</p>
								</div>

								<div class="col-6 col-md-6">
									<p class="key">{{__('site.attachment')}}</p>
									<img src="{{asset('design-site/images/customs/'.$custom->photo)}}"style="width:75px;height:75px;">
								</div>
							

								<div class="col-6 col-md-2">
                                    <p class="key">{{__('site.actions')}}</p>
                                    <div class="actions-dropdown">
                                        <button type="button" class="btn btn-style btn-sm" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="fas fa-ellipsis-h"></i>
                                        </button>

                                        <div class="dropdown-menu">
                                            @can('edit')
                                            <a href="{{route('customs.edit',$custom->id)}}" class=" dropdown-item"><i class="fa fa-edit"> </i> {{__('site.edit')}}</a>
                                            @endcan
                                            @can('delete')
                                            <form action="{{route('customs.destroy', $custom->id)}}" method="POST" class="dropdown-item">
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
		{{ $customs->links() }}
		@endisset
	</div>
</div>
@stop