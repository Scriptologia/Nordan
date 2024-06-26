@php
$locale = app()->getLocale();
    $products = \App\Models\Product::withTranslation($locale);
    if(!empty($filter) && $filter == 'recomendation') $products = $products->where($filter,'1');
    if(!empty($filter) && $filter == 'type' && !empty($filterParams) ) $products = $products->where($filter.'_id', $filterParams);
   $products = $products->latest()->take(6)->get();
@endphp
@if(count($products))
<section class="container-liquid">
    <div class="container-inner p-60">
        <h2 class="like-h1 mb-30">{!! $title !!}</h2>
        <div class="flex">
            @foreach($products as $product)
            <div class="card">
                <div class="card-img">
                    {{$product->getFirstMedia('images') }}
                </div>
                <h5>{{strip_tags($product->translate($locale)->name)}}</h5>
                <div class="description">{{$product->type->translate($locale)->name}}, {{$product->collection->translate($locale)->name}}</div>
                @if(!empty($product->markets))
                <div class="icons">
                    @foreach($product->markets as $icon)
{{--                    @foreach(json_decode($product->icons) as $icon)--}}
                    <div class="icons_item">
                        {{$icon->getFirstMedia('icon') }}
{{--                        <img src="{{ Voyager::image( $icon ) }}" alt="">--}}
                    </div>
                    @endforeach
                </div>
                @endif
                    <a href="{{route('card', $product)}}" class="link">@lang('text.to-product')<i class="icon-li-arrow2"></i></a>
            </div>
            @endforeach
        </div>
        @if(!empty($buttonLink))
        <div class="flex jus-center">
        <a href="{{$buttonLink}}" class="btn btn-orange mt-40">@lang('text.to-catalog')</a>
        </div>
            @endif
    </div>
</section>
@endif