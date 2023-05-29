@extends('layouts.admin_app')

@section('title', __('site.details'))

@section('css')
@stop

@section('js')
@stop


@section('title-page', __('site.details'))

@section('content')

<!-- Main content -->

<div class="main-stage products">

	<div class="col-md-11 m-auto">
		@include('partial.alerts')
		@if($products->count() > 0)
		<div class="row">
			<div class="col-md-12 single-row">
				<div class="card">
					<div class="card-body">
						<div class="row">
							@foreach($products as $product)
							<div class="form-group col-6 col-md-4">
								<label for="id" class="col-form-label">{{__('site.code')}} : {{$product->id}}</label>
							</div>

							<div class="form-group col-6 col-md-4">
								<label for="category" class="col-form-label">{{__('site.category')}} : 
									{{$product->category->name}}</label>
							</div>

							<div class="form-group col-6 col-md-4">
								<label for="name" class="col-form-label">{{__('site.product')}} : {{$product->name}}</label>
							</div>

							<div class="form-group col-6 col-md-3">
								<label for="price" class="col-form-label">{{__('site.price')}} : {{$product->price}}</label>
							</div>

							<div class="form-group col-6 col-md-3">
								<label for="quantity" class="col-form-label">{{__('site.quantity')}} : {{$product->quantity}}</label>
							</div>

							<div class="form-group col-6 col-md-3">
								<label for="notify" class="col-form-label">{{__('site.notify')}} : {{$product->notify}}</label>
							</div>

							<div class="form-group col-6 col-md-3">
								<label for="unit" class="col-form-label">{{__('site.unit')}} : {{$product->unit}}</label>
							</div>

							<div class="form-group col-6 col-md-6">
								<label for="description" class="col-form-label">{{__('site.description')}}</label>
								<div>{{$product->description}}</div>
							</div>

							<div class="form-group col-6 col-md-6">
								<label for="details" class="col-form-label">{{__('site.details')}}</label>
								<div>{{$product->details}}</div>
							</div>

							@can('edit')
							<div class="col-6 col-md-2">
								<p class="key">{{__('site.edit')}}</p>
								<a href="{{route('products.edit',$product->id)}}" class="btn btn-info">
									<i class="fa fa-edit"></i></a>
								</div>
								@endcan

								@can('delete')
								<div class="col-6 col-md-2">
									<p class="key">{{__('site.delete')}}</p>
									<form action="{{route('products.destroy',$product->id)}}" method="post">
										@csrf
										{{ method_field('delete') }}
										<button type="submit" class="btn btn-danger delete"><i class="fa fa-trash-alt"></i>
										</button>
									</form>
								</div>
								@endcan
								@endforeach
							</div>
						</div>
					</div>
					<div class="card">
						<div class="card-body">

							<div class="form-group row">
								<div class="col-6 col-md-2">
									<label for="image" class="col-form-label">{{__('site.image')}}</label>
								</div>
								<div class="col-6 col-md-6">
									<img src="{{asset('gallery/'.$product->photo)}}" style="width:250px;height:150px;">
								</div>
								@can('edit')
								<div class="form-group col-md-2">
									<p class="key">{{__('site.edit')}}</p>
									<a href="{{route('product.editMainImages',$product->id)}}" class="btn btn-info">
										<i class="fa fa-edit"></i></a>
									</div>
									@endcan

									@can('delete')
									<div class="form-group col-md-2">
										<p class="key">{{__('site.delete')}}</p>
										<form action="{{route('product.deleteMainImages',$product->id)}}" method="post" enctype="multipart/form-data">
											@csrf
											{{method_field('PUT')}}
											<input type="hidden" name="deleteimage" value="1">
											<button type="submit" class="btn btn-danger delete"><i class="fa fa-trash-alt"></i>
											</button>
										</form>
									</div>
									@endcan

							</div>

							<div class="form-group row">
								<div class="col-6 col-md-2">
									<label for="SmaillImage" class="col-form-label">{{__('site.SmallImage')}}</label>
								</div>
								<div class="col-6 col-md-6">
									<img src="{{asset('gallery/'.$product->small_photo)}}" style="width:250px;height:100px;">
								</div>
								@can('edit')
								<div class="col-md-2">
									<p class="key">{{__('site.edit')}}</p>
									<a href="{{route('product.editMainImages',$product->id)}}" class="btn btn-info">
										<i class="fa fa-edit"></i></a>
									</div>
									@endcan

									@can('delete')
									<div class="col-md-2">
										<p class="key">{{__('site.delete')}}</p>
										<form action="{{route('product.deleteMainImages',$product->id)}}" method="post" enctype="multipart/form-data">
											@csrf
											{{method_field('PUT')}}
											<input type="hidden" name="deleteimage" value="2">
											<button type="submit" class="btn btn-danger delete"><i class="fa fa-trash-alt"></i>
											</button>
										</form>
									</div>
									@endcan

							</div>


									<div style="margin-bottom:15px">
										<span style="font-size:20px">{{__('site.gallery')}}</span>
										<button class="btn btn-info" id="add_image">
											<i class="fa fa-plus"></i>&nbsp;&nbsp;إضافة صور
										</button>

										<form class="form-horizontal" action="{{route('add.images')}}" method="post" enctype="multipart/form-data" id="add_image_form" style="display: none;margin-top: 15px;">
											@csrf

											<input type="hidden" name="product_id" value="{{$product->id}}">

											<div class="form-group row">
												<div class="col-sm-8">
													<input type="file" class="form-control" name="gallery[]" multiple>
												</div>
												<div class="col-sm-4">
													<button type="submit" class="btn btn-info prevent-multiple-submits">{{__('site.add')}}</button>
												</div>
											</div>
										</form>
									</div>

									<div class="row">

										<?php $counter = 1 ; ?>
										@if($ProductGallery->count() > 0)
										@foreach($ProductGallery as $gallery)

										<div class="col-6 col-md-6" style="margin-bottom:15px">
											<?php echo $counter++ ; ?> &nbsp;&nbsp;
											<img src="{{asset('gallery/'.$gallery->photo)}}" style="width:100px;height:100px;">
										</div>

										@can('edit')
										<div class="col-6 col-md-2">
											<p class="key">{{__('site.edit')}}</p>
											<a href="{{route('galleries.edit',$gallery->id)}}" class="btn btn-info">
												<i class="fa fa-edit"></i></a>
											</div>
											@endcan

											@can('delete')
											<div class="col-6 col-md-2">
												<p class="key">{{__('site.delete')}}</p>
												<form action="{{route('galleries.destroy',$gallery->id)}}" method="post">
													@csrf
													{{ method_field('delete') }}
													<button type="submit" class="btn btn-danger delete"><i class="fa fa-trash-alt"></i>
													</button>
												</form>
											</div>
											@endcan

											@endforeach
											@endif
										</div>
									</div>

								</div>
							</div>
						</div>
						@endif
					</div>
				</div>
				@stop

