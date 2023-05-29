<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>

        @include('site.layouts.head')

        @yield('css')

    </head>
    <body>

        <div class="preloader">
        <div class="preloader-body">
            <div class="cssload-container"><span></span><span></span><span></span><span></span>
            </div>
        </div>
        </div>

        <div class="page">

            @include('site.layouts.nav')

            @yield('content')

        {{--    @include('site.layouts.footer') --}}  

        </div>

            @include('site.layouts.special-side')

            <!-- Global Mailform Output-->
            <div class="snackbars" id="form-output-global"></div>

            @include('site.layouts.script')

            @yield('js')

    </body>
</html>
