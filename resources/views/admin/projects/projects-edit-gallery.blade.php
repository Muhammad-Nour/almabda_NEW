@extends('layouts.admin_app')

@section('title', __('site.editImage'))

@section('css')
@stop

@section('js')
@stop


@section('title-page', __('site.editImage'))

@section('content')

<!-- Main content -->

<div class="main-stage projects">
	<div class="col-md-11 m-auto">
		@include('partial.alerts')
		<div class="row">
			<div class="col-md-12 single-row">
				<div style="background: honeydew;border-radius: 3px;padding: 5px;margin-bottom: 5px;">
				{{__('site.name_ar')}} : {{$gallery->project->name_ar;}} |
				{{__('site.name_en')}} : {{$gallery->project->name_en;}}
				</div>
				<div class="card">
					<div class="card-body">
						<div>
							<h4>{{__('site.gallery')}}</h4>
						</div>
						<form class="form-horizontal" action="{{route('project.updateGalleryImage',$gallery->id)}}" 
						method="post" enctype="multipart/form-data">
						@csrf
						{{method_field('put')}}
						<div class="row">
							<div class="row" style="margin-bottom:15px">
								<div class="col-6 col-md-12">
									<img src="{{asset('gallery/'.$gallery->photo)}}" style="width:100px;height:100px;">
								</div>
								<div class="col-6 col-md-12">
									<input type="file" class="form-control" name="gallery">
								</div>
								<div class="col-6 col-md-12">
									<button type="submit" class="btn btn-style">{{__('site.update')}}</button>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
</div>
@stop

