@extends('layouts.app')
@section('content')
    <main>
        <section class="container-liquid">
            <div class="container-inner p-60 mt-60">
                <div class="product-card">
                    <div class="product-card-left">
                        <div class="product-slider-main">
                            @forelse(json_decode($product->images) as $img)
                            <img src="{{Voyager::image( $img)}}" alt="">
                            @empty
                            @endforelse
                        </div>
                        <div class="product-slider-nav">
                            @foreach(json_decode($product->images) as $img)
                                <div class="product-slider-nav_item"><img src="{{Voyager::image( $img)}}" alt=""></div>
                            @endforeach
                        </div>
                    </div>
                    <div class="product-card-right">
                        <h1>{!! $product->name !!}</h1>
                        <div class="product-card-right-type">{{$product->type->name}},{{$product->collection->name}}</div>
                        {{--<div class="reiting">--}}
                            {{--<div class="reiting-stars" data-score="3"></div>--}}
                            {{--<div class="reiting-text">2313 отзывов</div>--}}
                        {{--</div>--}}
                        <p class="product-card-right-description">{{$product->description}}</p>
                        <div class="product-card-right-buttons">
                            @foreach($product->markets as $market)
                                <a href="{{$market->link}}" class="btn btn-pink">купить на {{$market->name}}</a>
                            @endforeach
                        </div>
                        <div class="info">
                            <h4>характеристики товара</h4>
                            <ul class="info-list">
                                @foreach(json_decode($product->parameters)->rows as $parameter)
                                    <li class="info-list_item">
                                        <span class="name">{{str_trans($parameter->name)}}</span>
                                        <span class="value">{{$parameter->value}}</span>
                                    </li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="container-liquid">
            <div class="container-inner p-60 mb-60">
                <h2 class="like-h1 mb-30">товары из <span>категории</span></h2>
                <div class="flex">
                    <div class="product">
                        <div class="product-img">
                            <img src="assets/images/img/legs.jpg" alt="">
                        </div>
                        <h5>туфли nordan</h5>
                        <div class="description">мужские, весенняя коллекция</div>
                        <div class="icons">
                            <div class="icons_item">
                                <img src="assets/images/img/image2.png" alt="">
                            </div>
                            <div class="icons_item">
                                <img src="assets/images/img/image2.png" alt="">
                            </div>
                            <div class="icons_item">
                                <img src="assets/images/img/image2.png" alt="">
                            </div>
                        </div>
                        <a href="" class="link">к товару<i class="icon-li-arrow2"></i></a>
                    </div>
                    <div class="product">
                        <div class="product-img">
                            <img src="assets/images/img/legs.jpg" alt="">
                        </div>
                        <h5>туфли nordan</h5>
                        <div class="description">мужские, весенняя коллекция</div>
                        <div class="icons">
                            <div class="icons_item">
                                <img src="assets/images/img/image2.png" alt="">
                            </div>
                            <div class="icons_item">
                                <img src="assets/images/img/image2.png" alt="">
                            </div>
                            <div class="icons_item">
                                <img src="assets/images/img/image2.png" alt="">
                            </div>
                        </div>
                        <a href="" class="link">к товару<i class="icon-li-arrow2"></i></a>
                    </div>
                    <div class="product">
                        <div class="product-img">
                            <img src="assets/images/img/legs.jpg" alt="">
                        </div>
                        <h5>туфли nordan</h5>
                        <div class="description">мужские, весенняя коллекция</div>
                        <div class="icons">
                            <div class="icons_item">
                                <img src="assets/images/img/image2.png" alt="">
                            </div>
                            <div class="icons_item">
                                <img src="assets/images/img/image2.png" alt="">
                            </div>
                            <div class="icons_item">
                                <img src="assets/images/img/image2.png" alt="">
                            </div>
                        </div>
                        <a href="" class="link">к товару<i class="icon-li-arrow2"></i></a>
                    </div>
                    <div class="product">
                        <div class="product-img">
                            <img src="assets/images/img/legs.jpg" alt="">
                        </div>
                        <h5>туфли nordan</h5>
                        <div class="description">мужские, весенняя коллекция</div>
                        <div class="icons">
                            <div class="icons_item">
                                <img src="assets/images/img/image2.png" alt="">
                            </div>
                            <div class="icons_item">
                                <img src="assets/images/img/image2.png" alt="">
                            </div>
                            <div class="icons_item">
                                <img src="assets/images/img/image2.png" alt="">
                            </div>
                        </div>
                        <a href="" class="link">к товару<i class="icon-li-arrow2"></i></a>
                    </div>
                </div>
            </div>
        </section>
    </main>
@endsection