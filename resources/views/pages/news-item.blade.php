@extends('layouts.app')
@section('content')
    @php
        $locale = app()->getLocale();
    @endphp
    <main>
        <section class="container-liquid">
            <article class="container-inner p-60 mt-60">
                <h2 class="like-h1 mb-40">{!! $news->translate($locale)->title !!}</h2>
                <div class="breadcrumbs mb-40">
                    <a class="breadcrumbs_link" href="/">@lang('text.main')</a>
                    <span class="breadcrumbs_separator">/</span><a class="breadcrumbs_link" href="{{route('news')}}">@lang('text.news.news')</a>
                    <span class="breadcrumbs_separator">/</span><span class="breadcrumbs_item">{{$news->title}}</span>
                </div>
                <article>
                    <img class="main" src=" {{$news->getFirstMedia('img')?->getFullUrl() }}" alt="">
                    {!! $news->translate($locale)->description !!}
                </article>
            </div>
        </section>
    </main>
@endsection

@push('script')
@endpush