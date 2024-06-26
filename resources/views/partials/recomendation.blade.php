@php
    $products = \App\Models\Product::withTranslation(app()->getLocale());
    if(!empty($filter)) $products = $products->where($filter,'1');
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
                    <img src="{{$product->img}}" alt="">
                </div>
                <h5>{{strip_tags($product->name)}}</h5>
                <div class="description">{{$product->type->name}}, {{$product->collection->name}}</div>
                @if(!empty($product->icons))
                <div class="icons">
                    @foreach(json_decode($product->icons) as $icon)
                    <div class="icons_item">
                        <img src="{{ Voyager::image( $icon ) }}" alt="">
                    </div>
                    @endforeach
                </div>
                @endif
                <a href="{{route('card', $product)}}" class="link">@lang('text.to-product')<i class="icon-li-arrow2"></i></a>
            </div>
            @endforeach
        </div>
        @if(!empty($buttonLink))
        <a href="{{$buttonLink}}" class="btn btn-orange mt-40">@lang('text.to-catalog')</a>
            @endif
    </div>
</section>
@endif