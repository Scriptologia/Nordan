@if($mainslider)
<section class="container-liquid ">
    <div class="container-inner p-x-0">
        <div class="main-slider">
            <div class="main-slider_slider">
                @foreach($mainslider as $slid)
                <div class="main-slider_slider-item">
                    {{$slid->getFirstMedia('img') }}
{{--                    <img src="{{ Voyager::image( $slid->img ) }}" alt="">--}}
                    <div class="info">
                        <div class="info-name"><h2 class="like-h1">{!! $slid->name !!}</h2></div>
                        <div class="info-text">{{$slid->description}}</div>
                        <a href="{{$slid->link1}}" class="btn btn-orange">@lang('text.to-catalog')</a>
                        <a href="{{$slid->link2}}" class="btn btn-transparent">@lang('text.to-collection')</a>
                    </div>
                </div>
                @endforeach
            </div>
            <div class="dots-items"></div>
        </div>
    </div>
</section>
@endif