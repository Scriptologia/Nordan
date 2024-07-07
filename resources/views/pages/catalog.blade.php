@extends('layouts.app')
@section('content')
    <main>
        <section class="container-liquid">
            <div class="container-inner p-60 mt-60">
                <h2 class="like-h1 mb-30">@lang('text.catalog-of-products') <span>nordan</span></h2>
                <div class="catalog">
                    <form action="{{route('catalog')}}" metod="post" id="form-catalog">
                        @csrf
                    <div class="catalog-filters">
                        @if(count($collection))
                        <div class="input-group" id="collection">
                            <h5>@lang('text.collection')</h5>
                            <div class="container-select">
                                <select name="collection">
                                    <option value="">@lang('text.select_collection'):</option>
                                    @foreach($collection as $collect)
                                    <option value="{{$collect->slug}}">{{$collect->name}}</option>
                                        @endforeach
                                </select>
                            </div>
                        </div>
                        @endif
                        @if(count($types))
                        <div class="input-group" id="type">
                            <h5>@lang('text.for_whoe')</h5>
                            <div class="container-select">
                                <select  name="type">
                                    <option value="">@lang('text.select_type'):</option>
                                    @foreach($types as $type)
                                        <option value="{{$type->slug}}">{{$type->name}}</option>
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
                        {{--<div class="input-group" id="waterproof">--}}
                            {{--<h5>@lang('text.waterproof')</h5>--}}
                            {{--<div class="flex">--}}
                                {{--<label class="container">@lang('text.with_tex')--}}
                                    {{--<input type="checkbox" name="waterproof">--}}
                                    {{--<span class="checkmark"></span>--}}
                                {{--</label>--}}
                            {{--</div>--}}
                        {{--</div>--}}
                            @if(count($advantages))
                                <div class="input-group" id="advantages">
                                    <h5>@lang('text.advantages')</h5>
                                    <div class="column">
                                        @foreach($advantages as $advantage)
                                            <label class="container">{{$advantage->name}}
                                                <input type="checkbox" name="advantages[]" value="{{$advantage->slug}}">
                                                <span class="checkmark"></span>
                                            </label>
                                        @endforeach
                                    </div>
                                </div>
                            @endif
                        @if(count($colors))
                        <div class="input-group" id="colors">
                            <h5>@lang('text.colors')</h5>
                            <div class="flex">
                                @foreach($colors as $color)
                                <label class="container">{{$color->name}}
                                    <input type="checkbox" name="colors[]" value="{{$color->slug}}">
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
                                    <input type="checkbox" name="markets[]" value="{{$market->slug}}">
                                    <span class="checkmark"></span>
                                </label>
                                @endforeach
                            </div>
                        </div>
                        @endif
                    </div>
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
        let queryArray = @json($queryArray);

       route.url = @json($url);

       $(document).ready(function() {
           if (typeof queryArray !== "undefined" && queryArray) {
               setFilters(queryArray);
               history.pushState(null, null, decodeURI(route.url));
           }
           else {
               history.pushState(null, null, decodeURI(route.catalog));
           }

        function setFilters(queryArray = []){
            console.log(queryArray)
            let filters = $('.catalog-filters')
            filters.find('#collection  select').val(queryArray.collection? queryArray.collection[0]: null)
            filters.find('#type  select').val(queryArray.type? queryArray.type[0]: null)
            filters.find('#waterproof  input').val(queryArray.waterproof? queryArray.waterproof[0] : null)
            filters.find('#sizes input').each(function( index ) {
                $( this ).prop('checked', false);
                let v = $( this ).val();
                if(queryArray.sizes !== null && queryArray.sizes !== undefined && queryArray.sizes.includes(v)) $( this ).prop('checked', true);
            })
            filters.find('#markets input').each(function( index ) {
                $( this ).prop('checked', false);
                let v = $( this ).val();
                if(queryArray.markets !== null && queryArray.markets !== undefined && queryArray.markets.includes(v)) $( this ).prop('checked', true);
            })
            filters.find('#colors input').each(function( index ) {
                $( this ).prop('checked', false);
                let v = $( this ).val();
                if(queryArray.colors !== null && queryArray.colors !== undefined && queryArray.colors.includes(v)) $( this ).prop('checked', true);
            })
        }

        $('#form-catalog').on('change', function(e) {
            e.preventDefault();
            let data = $('#form-catalog').serialize()
            $.post( location.pathname, data, function( response ){
                if(response.success){
                    console.log(response)
                    $('.catalog-items .flex').html(response.productHTML)
                    $('.catalog-items .paginator').remove()
                    $('.catalog-items').append(response.paginatorHTML)
                    setFilters(response.queryArray)
                    history.pushState(null, null, decodeURI(response.url));
                }
                else {
                    console.log( 'Получено с сервера: ' + response );
                }
            });
        })

        $(document).on('click', '.paginator a', function(e) {
            e.preventDefault();
            href = $(this).attr('href');
            let data = {
                // "href": href
            };
            if(href !== undefined) {
                $.post( href, data, function( response ){
                    if(response.success){
                        $('.catalog-items .flex').html(response.productHTML)
                        $('.catalog-items .paginator').remove()
                        $('.catalog-items').append(response.paginatorHTML)
                        setFilters(response.queryArray)
                        history.pushState(null, null, response.url);
                    }
                    else {
                        console.log( 'Получено с сервера: ' + response );
                    }
                });
            }
        })

        //END FIELD SELECT
        var x, i, j, l, ll, selElmnt, a, b, c;
        /*look for any elements with the class "container-select:*/
        x = document.getElementsByClassName("container-select");
        l = x.length;
        for (i = 0; i < l; i++) {
            selElmnt = x[i].getElementsByTagName("select")[0];
            ll = selElmnt.length;
            /*for each element, create a new DIV that will act as the selected item:*/
            a = document.createElement("DIV");
            a.setAttribute("class", "select-selected");
            a.innerHTML = selElmnt.options[selElmnt.selectedIndex].innerHTML;
            x[i].appendChild(a);
            /*for each element, create a new DIV that will contain the option list:*/
            b = document.createElement("DIV");
            b.setAttribute("class", "select-items select-hide");
            for (j = 1; j < ll; j++) {
                /*for each option in the original select element,
                create a new DIV that will act as an option item:*/
                c = document.createElement("DIV");
                c.innerHTML = selElmnt.options[j].innerHTML;
                c.addEventListener("click", function(e) {
                    /*when an item is clicked, update the original select box,
                    and the selected item:*/
                    var y, i, k, s, h, sl, yl, o;
                    s = this.parentNode.parentNode.getElementsByTagName("select")[0];
                    sl = s.length;
                    h = this.parentNode.previousSibling;
                    for (i = 0; i < sl; i++) {
                        if (s.options[i].innerHTML == this.innerHTML) {
                            o = s.options[i];
                            s.selectedIndex = i;
                            o.selected = true;
                            h.innerHTML = this.innerHTML;
                            y = this.parentNode.getElementsByClassName("same-as-selected");
                            yl = y.length;
                            for (k = 0; k < yl; k++) {
                                y[k].removeAttribute("class");
                            }
                            this.setAttribute("class", "same-as-selected");
                            break;
                        }
                    }
                    h.click();o.click();$(s).change();
                });
                b.appendChild(c);
            }
            x[i].appendChild(b);
            a.addEventListener("click", function(e) {
                /*when the select box is clicked, close any other select boxes,
                and open/close the current select box:*/
                e.stopPropagation();
                closeAllSelect(this);
                this.nextSibling.classList.toggle("select-hide");
                this.classList.toggle("select-arrow-active");
            });
        }
        function closeAllSelect(elmnt) {
            /*a function that will close all select boxes in the document,
            except the current select box:*/
            var x, y, i, xl, yl, arrNo = [];
            x = document.getElementsByClassName("select-items");
            y = document.getElementsByClassName("select-selected");
            xl = x.length;
            yl = y.length;
            for (i = 0; i < yl; i++) {
                if (elmnt == y[i]) {
                    arrNo.push(i)
                } else {
                    y[i].classList.remove("select-arrow-active");
                }
            }
            for (i = 0; i < xl; i++) {
                if (arrNo.indexOf(i)) {
                    x[i].classList.add("select-hide");
                }
            }
        }
        /*if the user clicks anywhere outside the select box,
        then close all select boxes:*/
        document.addEventListener("click", closeAllSelect);
        //END FIELD SELECT

       })
    </script>
@endpush