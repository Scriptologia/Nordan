@php
$locale = app()->getLocale();
@endphp
@extends('layouts.app')
@section('content')
    <main>
        <section class="container-liquid">
            <div class="container-inner p-60 mt-60">
                <div class="product-card">
                    <div class="product-card-left">
                        <div class="product-slider-main">
{{--                            @forelse(json_decode($product->images) as $img)--}}
                            @forelse($product->getMedia('images') as $img)
{{--                                @dd($img)--}}
                            <img src="{{Voyager::image( $img)}}" alt="">
{{--                            <img src="{{$product->getThumbnail($img->original_url, 'fit-500')}}" alt="">--}}
                            @empty
                            @endforelse
                        </div>
                        <div class="product-slider-nav">
                            @forelse($product->getMedia('images') as $img)
                                <div class="product-slider-nav_item"> {{ $img}}</div>
                                {{--<div class="product-slider-nav_item"><img src="{{Voyager::image( $img)}}" alt=""></div>--}}
                            @endforeach
                        </div>
                    </div>
                    <div class="product-card-right">
                        <h1>{!! $product->translate($locale)->name !!}</h1>
                        <div class="product-card-right-type">{{$product->type->translate($locale)->name}},{{$product->collection->translate($locale)->name}}</div>
                        {{--<div class="reiting">--}}
                            {{--<div class="reiting-stars" data-score="3"></div>--}}
                            {{--<div class="reiting-text">2313 отзывов</div>--}}
                        {{--</div>--}}
                        <p class="product-card-right-description">{{$product->translate($locale)->description}}</p>
                        <div class="product-card-right-buttons">
                            @foreach($product->markets as $market)
                                @php
                                $bg = '';
                                if($loop->index === 0) $bg = 'btn-pink' ;
                                if($loop->index === 1) $bg = 'btn-blue' ;
                                if($loop->index === 2) $bg = 'btn-orange' ;
                                @endphp
                                <a href="{{$market->link}}" class="btn {{$bg}}">купить на {{$market->translate($locale)->name}}</a>
                            @endforeach
                        </div>
                        <div class="info">
                            <h4>характеристики товара</h4>
                            <ul class="info-list">
                                @php
                                    $locale = app()->getLocale();
                                @endphp
                                @foreach(json_decode($product->parameters)->rows as $parameter)
                                    <li class="info-list_item">
                                        <span class="name">{{str_trans($parameter->name, $locale)}}</span>
                                        <span class="value">{{str_trans($parameter->value, $locale)}}</span>
                                    </li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        @include('partials.recomendation', [ 'title' => __('text.product_of_category'), 'filter' => 'type', 'filterParams' => $product->type->id])
    </main>
@endsection