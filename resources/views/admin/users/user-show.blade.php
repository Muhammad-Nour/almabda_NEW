@extends('layouts.admin_app')

@section('title', __('site.clients'))

@section('css')
@stop

@section('js')
@stop


@section('title-page',__('site.clients'))

@section('content')

<!-- Main content -->
<div class="container-fluid col-md-7">
	<div class="supplier">
		<div class="card card-info">
			<div class="card-header">
				<h3 class="card-title">{{__('site.add_data')}}</h3>
			</div>
			<!-- /.card-header -->
			<!-- form start -->
			<form class="form-horizontal" action="{{route('clients.store')}}" method="post">
				@csrf
				<div class="card-body">

					<div class="form-group row">
						<label for="name" class="col-sm-3 col-form-label">{{__('site.name')}}</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" name="name" id="name" 
							placeholder="{{__('site.name')}}" value="{{old('name')}}" required>
						</div>
					</div>

					<div class="form-group row">
					
						<label for="phone" class="col-sm-3 col-form-label">{{__('site.phone')}}</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" name="phone" id="phone" 
							placeholder="{{__('site.phone')}}" value="{{old('phone')}}" required>
						</div>
					</div>

					<div class="form-group row">
						<label for="address" class="col-sm-3 col-form-label">{{__('site.address')}}</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" name="address" id="address" 
							placeholder="{{__('site.address')}}" value="{{old('address')}}" required>
						</div>
					</div>

					<div class="form-group row">
						<label for="bank" class="col-sm-3 col-form-label">{{__('site.bank')}}</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" name="bank" id="bank" 
							placeholder="{{__('site.bank')}}" value="{{old('bank')}}" required>
						</div>
					</div>

					<div class="form-group row">
						<label for="account" class="col-sm-3 col-form-label">{{__('site.account')}}</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" name="account" id="account" 
							placeholder="{{__('site.account')}}" value="{{old('account')}}" required>
						</div>
					</div>

					<div class="form-group row">
						<label for="vat_number" class="col-sm-3 col-form-label">{{__('site.vat_number')}}</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" name="vat_number" id="vat_number" 
							placeholder="{{__('site.vat_number')}}" value="{{old('vat_number')}}" required>
						</div>
					</div>

					<div class="form-group row">
						<label for="commerical_number" class="col-sm-3 col-form-label">{{__('site.commerical_number')}}</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" name="commerical_number" id="commerical_number" 
							placeholder="{{__('site.commerical_number')}}" value="{{old('commerical_number')}}" required>
						</div>
					</div>

					<div class="form-group row">
						<label for="balance" class="col-sm-3 col-form-label">{{__('site.balance')}}</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" name="balance" id="balance" 
							placeholder="{{__('site.balance')}}" value="{{old('balance')}}" >
						</div>
					</div>

					<div class="form-group row">
						<label for="discount" class="col-sm-3 col-form-label">{{__('site.discount')}}</label>
						<div class="col-sm-9">
							<input type="text" class="form-control" name="discount" id="discount" 
							placeholder="{{__('site.discount')}}" value="{{old('discount')}}" >
						</div>
					</div>
					
				</div>
				<!-- /.card-body -->
				<div class="card-footer">
					<button type="submit" class="btn btn-info">{{__('site.add')}}</button>
				</div>
				@include('partial.alerts')
				<!-- /.card-footer -->
			</form>
		</div>
	</div>
</div>
@stop