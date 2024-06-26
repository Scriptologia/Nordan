@forelse ($products as $product)
    <div class="product">
        <div class="product-img">
            <img src="assets/images/img/legs.jpg" alt="">
        </div>
        <h5>{!! $product->name !!}</h5>
        <div class="description">{{$product->type->name}}, {{$product->collection->name}}</div>
        <div class="icons">
            @if($product->markets)
                @foreach($product->markets as $icon)
                    <div class="icons_item">
                        <img src="{{ Voyager::image($icon->icon) }}" alt="">
                    </div>
                @endforeach
            @endif
        </div>
        <a href="{{route('card', $product)}}" class="link">@lang('text.to-product')<i class="icon-li-arrow2"></i></a>
    </div>
@empty
    <h2>@lang('text.no-product')</h2>
@endforelse