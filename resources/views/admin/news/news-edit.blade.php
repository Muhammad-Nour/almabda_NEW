@extends('layouts.admin_app')

@section('title', __('site.news'))

@section('css')
@stop

@section('js')
@stop


@section('title-page',__('site.news'))

@section('content')

<!-- Main content -->
<div class="main-stage news">
	<div class="row">
		<div class="col-md-7 m-auto">
			@include('partial.alerts')
			<div class="card">
				<div class="card-header">
					<h3 class="card-title">{{__('site.edit')}}</h3>
				</div>
				<!-- /.card-header -->
				<!-- form start -->
				<form action="{{route('news.update',$news->id)}}" 
					method="post" enctype="multipart/form-data">
					@csrf
					{{ method_field('put') }}
					<div class="card-body">
						<div class="form-group">
							<label>{{__('site.name_ar')}}</label>
							<input type="text" class="form-control" name="name_ar" required 
							value="{{ isset($news) ? $news->name_ar : ''}}">
						</div>
						<div class="form-group">
							<label>{{__('site.name_en')}}</label>
							<input type="text" class="form-control" name="name_en" required 
							value="{{ isset($news) ? $news->name_en : ''}}">
						</div>
						<div class="form-group">
							<label>{{__('site.description_ar')}}</label>
							<textarea class="form-control" name="description_ar" 
							value="{{$news->description_ar}}" required>
							{{$news->description_ar}}</textarea>
						</div>

						<div class="form-group">
							<label>{{__('site.description_en')}}</label>
							<textarea class="form-control" name="description_en" 
							value="{{$news->description_en}}" required>
							{{$news->description_en}}</textarea>
						</div>

						<div class="form-group">
							<label>{{__('site.date')}}</label>
							<input type="datetime-local" class="form-control" name="date" id="date" required value="{{ \Carbon\Carbon::parse($news->date)->format('Y-m-d\TH:i')}}">
						</div>

						<div class="form-group">
							<strong>{{__('site.image')}}</strong>
							<img src="{{asset('gallery/'.$news->photo)}}" style="width:100px;height:100px;">
							<input type="file" class="form-control" name="photo">
						</div>
						
					</div>
					<!-- /.card-body -->
					<div class="card-footer">
						<button type="submit" class="btn btn-style">{{__('site.update')}}</button>
					</div>
					<!-- /.card-footer -->
				</form>
			</div>
		</div>
	</div>
</div>
@stop