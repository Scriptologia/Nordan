@extends('layouts.app')
@section('content')
    <main>
        <section class="container-liquid">
            <div class="container-inner p-60 mt-60">
                <h2 class="like-h1 mb-40">@lang('text.news.title') <span>nordan</span></h2>
                <div class="breadcrumbs mb-40">
                    <a class="breadcrumbs_link" href="/">@lang('text.main')</a>
                    <span class="breadcrumbs_separator">/</span><span class="breadcrumbs_item">@lang('text.news.news')</span>
                </div>
                <div class="flex">
                    @foreach($news as $item)
                        @include('partials.news-card', ['item' => $item])
                    @endforeach
                </div>
                {!! $news->links('partials.paginator') !!}
            </div>
        </section>
    </main>
@endsection

@push('script')
@endpush