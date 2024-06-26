@extends('layouts.app')
@section('content')
    <main>
        @include('partials.main-slider')
        @include('partials.markets-slider')
        <section class="container-liquid">
            <div class="container-inner pb-60">
                <div class="news">
                    <div class="news-left">
                        <h2>произведено</h2>
                        <div class="counter">15 993</div>
                        <h2>продано</h2>
                        <div class="counter">15 993</div>
                    </div>
                    <div class="news-right">
                        <h2>Новости</h2>
                        <div class="news-right_items">
                            <div class="news_item">
                                <div class="news_item-left">
                                    <img src="{{asset('images/img/image4.png')}}" alt="">
                                </div>
                                <div class="news_item-right">
                                    <h5>Lorem Ipsum dolor sit amet</h5>
                                    <div class="date">12/12/2024</div>
                                    <div class="text">Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi. Aliquam in hendrerit urna. Pellentesque sit amet sapien.</div>
                                    <a class="link">к новости<i class="icon-li-arrow2"></i></a>
                                </div>
                            </div>
                            <div class="news_item">
                                <div class="news_item-left">
                                    <img src="{{asset('images/img/image0.png')}}" alt="">
                                </div>
                                <div class="news_item-right">
                                    <h5>Lorem Ipsum dolor sit amet</h5>
                                    <div class="date">12/12/2024</div>
                                    <div class="text">Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi. Aliquam in hendrerit urna. Pellentesque sit amet sapien.</div>
                                    <a class="link">к новости<i class="icon-li-arrow2"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="btn btn-orange">показать все</div>
                    </div>
                </div>
            </div>
        </section>
        <section class="container-liquid">
            <div class="container-inner p-60">
                <div class="collection">
                    <div class="collection_item">
                        <img src="{{asset('images/img/girl.jpg')}}" alt="">
                        <div class="collection_item-info">
                            <h3 class="title">@lang('text.child_collection') <span>nordan</span></h3>
                            <div class="description">@lang('text.text_collection')</div>
                            <a class="link"  href="/catalog?collection=1">@lang('text.go-catalog')<i class="icon-li-arrow2"></i></a>
                        </div>
                    </div>
                    <div class="collection_item">
                        <img src="{{asset('images/img/men.png')}}" alt="">
                        <div class="collection_item-info">
                            <h3 class="title">@lang('text.women_collection') <span>nordan</span></h3>
                            <div class="description">@lang('text.text_collection')</div>
                            <a class="link"  href="/catalog?collection=2">@lang('text.go-catalog')<i class="icon-li-arrow2"></i></a>
                        </div>
                    </div>
                    <div class="collection_item">
                        <img src="{{asset('images/img/men.png')}}" alt="">
                        <div class="collection_item-info">
                            <h3 class="title">@lang('text.man_collection') <span>nordan</span></h3>
                            <div class="description">@lang('text.text_collection')</div>
                            <a class="link" href="/catalog?collection=3">@lang('text.go-catalog')<i class="icon-li-arrow2"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        @include('partials.recomendation', ['buttonLink' => route('catalog'), 'title' => __('text.new_products_of_nortan')])
        <section class="container-liquid">
            <div class="container-inner p-60">
                <div class="flex">
                    <div class="property">
                        <div class="property-img">
                            <img src="{{asset('images/img/property1.png')}}" alt="">
                        </div>
                        <h4 class="property-text">@lang('text.property_1')</h4>
                    </div>
                    <div class="property">
                        <div class="property-img">
                            <img src="{{asset('images/img/property2.png')}}" alt="">
                        </div>
                        <h4 class="property-text">@lang('text.property_2')</h4>
                    </div>
                    <div class="property">
                        <div class="property-img">
                            <img src="{{asset('images/img/property3.png')}}" alt="">
                        </div>
                        <h4 class="property-text">@lang('text.property_3')</h4>
                    </div>
                    <div class="property">
                        <div class="property-img">
                            <img src="{{asset('images/img/property4.png')}}" alt="">
                        </div>
                        <h4 class="property-text">@lang('text.property_3')</h4>
                    </div>
                </div>
            </div>
        </section>
        <section class="container-liquid">
            <div class="container-inner p-60">
                <h2 class="like-h1 mb-30">@lang('text.cycle.title')</h2>
                <div class="flex">
                    <div class="cycle">
                        <div class="cycle-img">
                            <img src="{{asset('images/img/cycle.jpg')}}" alt="">
                        </div>
                        <div class="cycle-text">@lang('text.cycle.text_1')</div>
                        <div class="cycle-div">
                            <h2 class="like-h1">@lang('text.cycle.etap_1')</h2>
                        </div>
                    </div>
                    <div class="cycle">
                        <div class="cycle-img">
                            <img src="{{asset('images/img/cycle.jpg')}}" alt="">
                        </div>
                        <div class="cycle-text">@lang('text.cycle.text_2')</div>
                        <div class="cycle-div">
                            <h2 class="like-h1">@lang('text.cycle.etap_2')</h2>
                        </div>
                    </div>
                    <div class="cycle">
                        <div class="cycle-img">
                            <img src="{{asset('images/img/cycle.jpg')}}" alt="">
                        </div>
                        <div class="cycle-text">@lang('text.cycle.text_3')</div>
                        <div class="cycle-div">
                            <h2 class="like-h1">@lang('text.cycle.etap_3')</h2>
                        </div>
                    </div>
                    <div class="cycle">
                        <div class="cycle-img">
                            <img src="{{asset('images/img/cycle.jpg')}}" alt="">
                        </div>
                        <div class="cycle-text">@lang('text.cycle.text_4')</div>
                        <div class="cycle-div">
                            <h2 class="like-h1">@lang('text.cycle.etap_4')</h2>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="container-liquid">
            <div class="container-inner p-60">
                <h2 class="like-h1 mb-30">@lang('text.is_quality')</h2>
                <div class="presentation">
                </div>
            </div>
        </section>
        <section class="container-liquid">
            <div class="container-inner p-60">
                <h2 class="like-h1 mb-30">@lang('text.nature.title')</h2>
                <div class="nature">
                    <div class="nature-left">
                        <img src="{{asset('images/img/squerell.jpg')}}" alt="">
                    </div>
                    <div class="nature-right">
                        <div class="nature-right_item"><i class="icon-li-nature1"></i>
                            <div class="nature-right_item_text">
                                <h4>@lang('text.nature.text_1')</h4>
                            </div>
                        </div>
                        <div class="nature-right_item"><i class="icon-li-nature2"></i>
                            <div class="nature-right_item_text">
                                <h4>@lang('text.nature.text_2')</h4>
                            </div>
                        </div>
                        <div class="nature-right_item"><i class="icon-li-nature3"></i>
                            <div class="nature-right_item_text">
                                <h4>@lang('text.nature.text_3')</h4>
                            </div>
                        </div>
                        <div class="nature-right_item"><i class="icon-li-nature4"></i>
                            <div class="nature-right_item_text">
                                <h4>@lang('text.nature.text_4')</h4>
                            </div>
                        </div>
                        <div class="nature-right_item"><i class="icon-li-nature5"></i>
                            <div class="nature-right_item_text">
                                <h4>@lang('text.nature.text_5')</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        @include('partials.recomendation', [ 'title' => __('text.recomendation_nordan'), 'filter' => 'recomendation'])
    </main>
@endsection
