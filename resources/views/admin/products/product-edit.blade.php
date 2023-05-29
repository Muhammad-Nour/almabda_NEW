@extends('layouts.admin_app')

@section('title', __('site.products'))

@section('css')
@stop

@section('js')
@stop


@section('title-page',__('site.products'))

@section('content')

<!-- Main content -->
<div class="main-stage products">
	<div class="row">
		<div class="col-md-7 m-auto">
			@include('partial.alerts')
			<div class="card card-info">
				<div class="card-header">
					<h3 class="card-title">{{__('site.update_data')}}</h3>
				</div>
				<!-- /.card-header -->
				<!-- form start -->
				<form class="form-horizontal" action="{{route('products.update',$product->id)}}" 
					method="post">
					@csrf
					{{method_field('put')}}
					<div class="card-body">

						<div class="form-group row">
							<label for="category" class="col-sm-2 col-form-label">{{__('site.category')}}</label>
							<select class="custom-select form-control-border col-sm-10" id="category_id" name="category_id" required>
								@if(isset($categories)) 
								@foreach($categories as $category)
								<option value="{{ $category->id }}" @if($product->category_id == $category->id) selected @endif>
									{{ $category->name }}</option>
									@endforeach
									@endif
								</select>
							</div>

							<div class="form-group row">
								<label for="name" class="col-sm-2 col-form-label">{{__('site.product')}}</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" name="name" id="name" value="{{$product->name}}" 
									placeholder="{{__('site.product')}}" required>
								</div>
							</div>


							<div class="form-group row">
								<label for="price" class="col-sm-2 col-form-label">{{__('site.price')}}</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" name="price" id="price" value="{{$product->price}}" 
									placeholder="{{__('site.price')}}" required>
								</div>
							</div>

							<div class="form-group row">
								<label for="quantity" class="col-sm-2 col-form-label">{{__('site.quantity')}}</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" name="quantity" id="quantity" value="{{$product->quantity}}" 
									placeholder="{{__('site.quantity')}}" required>
								</div>
							</div>

							<div class="form-group row">
								<label for="notify" class="col-sm-2 col-form-label">{{__('site.notify')}}</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" name="notify" id="notify" value="{{$product->notify}}" 
									placeholder="{{__('site.notify')}}" required>
								</div>
							</div>

							<div class="form-group row">
								<label for="unit" class="col-sm-2 col-form-label">{{__('site.unit')}}</label>
								<select class="custom-select form-control-border col-sm-10" id="unit" name="unit" required>
									<option value="{{$product->unit}}" selected>{{$product->unit}}</option>
									<option value="قطعة">قطعة</option>
									<option value="حبة">حبة</option>
									<option value="علبة">علبة</option>
									<option value="كرتون">كرتون</option>
									<option value="انبوب">انبوب</option>
									<option value="كيس">كيس</option>
									<option value="رول">رول</option>
									<option value="شريط">شريط</option>
								</select>
							</div>

							<div class="form-group row">
							<label for="details" class="col-sm-2 col-form-label">{{__('site.details')}}</label>
							<div class="col-sm-10">
								<textarea class="form-control" name="details" id="details" value="{{$product->details}}" required>{{$product->details}}</textarea>
							</div>
						</div>

						<div class="form-group row">
							<label for="description" class="col-sm-2 col-form-label">{{__('site.description')}}</label>
							<div class="col-sm-10">
								<textarea class="form-control" name="description" id="description" value="{{$product->description}}" required>{{$product->description}}</textarea>
							</div>
						</div>
							
						</div>
						<!-- /.card-body -->
						<div class="card-footer">
							<button type="submit" class="btn btn-info">{{__('site.update')}}</button>
						</div>
						<!-- /.card-footer -->
					</form>
				</div>
			</div>
		</div>
	</div>
	@stop