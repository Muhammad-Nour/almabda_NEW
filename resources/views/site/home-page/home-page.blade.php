@extends('site.layouts.app')

@section('title', 'المبدأ للديكور')

@section('css')
@stop

@section('js')
@stop



@section('content')

    @include('site.home-page.inc-slider')

    @include('site.home-page.inc-category1')

    @include('site.home-page.inc-category2')

    @include('site.home-page.inc-category3')

    @include('site.home-page.inc-category4')

    @include('site.home-page.inc-category5')

@stop
