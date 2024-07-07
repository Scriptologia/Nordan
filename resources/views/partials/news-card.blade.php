<div class="news_card">
    <div class="news_card-img">{{$item->getFirstMedia('img') }}</div>
    <div class="news_card-title">{!! $item->getTranslatedAttribute('title') !!}</div>
    <div class="news_card-date">{{$item->created_at?->format('d-m-Y')}}</div>
    <div class="news_card-description">{!! $item->getTranslatedAttribute('description') !!}</div>
    <a href="{{route('news-item', $item)}}" class="link">@lang('text.news.link')<i class="icon-li-arrow2"></i></a>
</div>