@extends('layouts.app')
@section('content')
    <main>
        <section class="container-liquid">
            <div class="container-inner p-60 mt-60">
                <h2 class="like-h1 mb-30">@lang('text.catalog-of-products') <span>nordan</span></h2>
                <div class="catalog">
                    <form action="{{route('api-get-products')}}" metod="post" id="form-catalog">
                        @csrf
                    @if(count($collection))
                    <div class="catalog-filters">
                        <div class="input-group" id="collection">
                            <h5>@lang('text.collection')</h5>
                            <div class="container-select">
                                <select name="collection">
                                    <option value="">@lang('text.select_collection'):</option>
                                    @foreach($collection as $collect)
                                    <option value="{{$collect->id}}">{{$collect->name}}</option>
                                        @endforeach
                                </select>
                            </div>
                        </div>
                        @if(count($types))
                        <div class="input-group" id="type">
                            <h5>@lang('text.for_whoe')</h5>
                            <div class="container-select">
                                <select  name="type">
                                    <option value="">@lang('text.select_type'):</option>
                                    @foreach($types as $type)
                                        <option value="{{$type->id}}">{{$type->name}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        @endif
                        @if(count($sizes))
                        <div class="input-group" id="sizes">
                            <h5>@lang('text.sizes')</h5>
                            <div class="flex">
                                @foreach($sizes as $size)
                                <label class="container">{{$size->size}}
                                    <input type="checkbox" name="sizes[]" value="{{$size->id}}">
                                    <span class="checkmark"></span>
                                </label>
                                @endforeach
                            </div>
                        </div>
                        @endif
                        <div class="input-group" id="waterproof">
                            <h5>@lang('text.waterproof')</h5>
                            <div class="flex">
                                <label class="container">@lang('text.with_tex')
                                    <input type="checkbox" name="waterproof">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                        </div>
                        @if(count($colors))
                        <div class="input-group" id="colors">
                            <h5>@lang('text.colors')</h5>
                            <div class="flex">
                                @foreach($colors as $color)
                                <label class="container">{{$color->name}}
                                    <input type="checkbox" name="colors[]" value="{{$color->id}}">
                                    <span class="checkmark"></span>
                                </label>
                                @endforeach
                            </div>
                        </div>
                        @endif
                        @if(count($markets))
                        <div class="input-group" id="markets">
                            <h5>@lang('text.marketplaces')</h5>
                            <div class="column">
                                @foreach($markets as $market)
                                <label class="container">{{$market->name}}
                                    <input type="checkbox" name="markets[]" value="{{$market->id}}">
                                    <span class="checkmark"></span>
                                </label>
                                @endforeach
                            </div>
                        </div>
                        @endif
                    </div>
                    @endif
                    </form>
                    <div class="catalog-items">
                        <div class="flex">
                            @include('partials.products')
                        </div>
                        {!! $products->links('partials.paginator') !!}
                    </div>
                </div>
            </div>
        </section>
    </main>
@endsection

@push('script')
    <script>
        let queryArray = @json($queryArray)
    </script>
@endpush