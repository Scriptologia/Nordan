@php
    $locale = app()->getLocale();
@endphp

@forelse ($products as $product)
    <div class="product">
        <div class="product-img">
            <div class="product-slider">
            @forelse ($product->getMedia('images') as $image)
                <img src="{{$image->getUrl()}}" alt="">
                @empty
                @endforelse
            </div>
            <div class="product-slider_arrow prev"><i class="icon-li-arrow2"></i></div>
            <div class="product-slider_arrow next"><i class="icon-li-arrow2"></i></div>
        </div>
        <h5>{!! $product->translate($locale)->name !!}</h5>
        <div class="description">{{$product->type->translate($locale)->name}}, {{$product->collection->translate($locale)->name}}</div>
        <div class="icons">
            @if($product->markets)
                @foreach($product->markets as $icon)
                    <div class="icons_item">
                        {{$icon->getFirstMedia('icon') }}
{{--                        <img src="{{ Voyager::image($icon->icon) }}" alt="">--}}
                    </div>
                @endforeach
            @endif
        </div>
        <a href="{{route('card', $product)}}" class="link">@lang('text.to-product')<i class="icon-li-arrow2"></i></a>
    </div>
@empty
    <h2>@lang('text.no-product')</h2>
@endforelse