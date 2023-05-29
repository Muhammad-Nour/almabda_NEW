@extends('layouts.admin_app')

@section('title', __('site.products'))

@section('css')
@stop

@section('js')
@stop


@section('title-page', __('site.products'))

@section('content')

<!-- Main content -->
<div class="main-stage products">
	<div class="col-md-11 m-auto">
		@include('partial.alerts')
		@if($products->count() > 0)
		<div class="row">
			@foreach($products as $product)
			<div class="col-md-12 single-row">
				<div class="card">
					<div class="card-body">
						<div class="row">
							<div class="col-12 col-md-2">
								<p class="key">{{__('site.code')}}</p>
								<p class="value">{{$product->id}}</p>
							</div>
							<div class="col-12 col-md-2">
								<p class="key">{{__('site.name')}}</p>
								<p class="value">{{$product->name}}</p>
							</div>

							<div class="col-12 col-md-2">
								<p class="key">{{__('site.image')}}</p>
								<p><img src="{{asset('gallery/'.$product->photo)}}" style="width:75px;height: 75px;"></p>
							</div>

							<div class="col-12 col-md-2">
								<p class="key">{{__('site.SmallImage')}}</p>
								<p><img src="{{asset('gallery/'.$product->small_photo)}}"style="width:75px;height:75px;">
								</p>
							</div>

							<div class="col-12 col-md-2">
								<p class="key">{{__('site.category')}}</p>
								<p class="value">{{$product->category->name}}</p>
							</div>
							<div class="col-12 col-md-2">
								<p class="key">{{__('site.price')}}</p>
								<p class="value">{{$product->price}}</p>
							</div>
							<div class="col-12 col-md-2">
								<p class="key">{{__('site.quantity')}}</p>
								<p class="value">{{$product->quantity}}</p>
							</div>
							<div class="col-12 col-md-2">
								<p class="key">{{__('site.notify')}}</p>
								<p class="value">{{$product->notify}}</p>
							</div>
							<div class="col-12 col-md-2">
								<p class="key">{{__('site.unit')}}</p>
								<p class="value">{{$product->unit}}</p>
							</div>
							@can('edit')
							<div class="col-6 col-md-1">
								<p class="key">{{__('site.edit')}}</p>
								<a href="{{route('products.edit',$product->id)}}" class="btn btn-info">
									<i class="fa fa-edit"></i></a>
							</div>
							@endcan

							<div class="col-6 col-md-1">
								<p class="key">{{__('site.details')}}</p>
								<a href="{{route('product.details',$product->id)}}" class="btn btn-primary">
									<i class="fa fa-info-circle"></i></a>
							</div>

							@can('delete')
							<div class="col-6 col-md-1">
								<p class="key">{{__('site.delete')}}</p>
								<form action="{{route('products.destroy',$product->id)}}" method="post">
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
		{{ $products->links() }}
	</div>
</div>
@stop

