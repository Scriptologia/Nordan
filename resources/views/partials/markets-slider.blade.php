@php
    $locale = app()->getLocale();
    $sliders = \App\Models\Market::withTranslation($locale)->get();
@endphp
@if(count($sliders))
<section class="container-liquid">
    <div class="container-inner p-60">
        <div class="icon-slider">
            <div class="icon-slider_slider">
                @foreach($sliders as $slider)
                <div class="icon-slider_slider_item">
                    {{$slider->getFirstMedia('img') }}
                    <a href="{{$slider->link }}" class="link">@lang('text.to_site')<i class="icon-li-arrow2"></i></a>
                </div>
                @endforeach
            </div>
            <div class="icon-slider_dots">
                <div class="icon-slider_arrow prev"><i class="icon-li-arrow"></i></div>
                <div class="icon-slider_arrow next"><i class="icon-li-arrow"></i></div>
            </div>
        </div>
    </div>
</section>
@endif