<!DOCTYPE html>
<html lang="{{app()->getLocale()}}">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>{{ env('APP_DOMAIN') }} }</title>
    <meta name="Keywords" content="" />
    <meta name="Description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=5" />
    <meta name="format-detection" content="telephone=no" />
    <link rel="shortcut icon" href="{{asset('logo-32.png')}}" />
    <link rel="stylesheet" href="{{asset('css/style.css')}}">
    <link rel="stylesheet" href="{{asset('css/slick.css')}}">
</head>
<body>
<div id="app">
    @include('partials.header')

    @yield('content')

    @include('partials.footer')
</div>
@stack('script')
<script src="{{asset('js/jquery-1.3.5.min.js')}}" ></script>
<script type="text/javascript" src="{{asset('js/slick-carousel-1.8.1-min.js')}}"></script>
<script src="{{asset('js/menu.js')}}"></script>
</body>
</html>