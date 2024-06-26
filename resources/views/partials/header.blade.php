<header>
    <div class="container-liquid">
        <div class="container-inner bg-main">
            <div class="header">
                <div class="header-icon">
                    <a href="{{route('index')}}"><img src="{{asset('images/img/logo.png')}}" alt=""><img src="{{asset('images/img/logo-text.png')}}" alt=""></a>
                </div>
                {!! menu('header', 'partials.menu') !!}
                {{--<div class="menu">--}}
                    {{--<a href="#" class="menu_item active">Мужская</a>--}}
                    {{--<a href="#" class="menu_item">Женская</a>--}}
                    {{--<a href="#" class="menu_item">детская</a>--}}
                    {{--<a href="#" class="menu_item">Спортивная</a>--}}
                    {{--<a href="#" class="menu_item">Аксессуары</a>--}}
                    {{--<a href="#" class="menu_item">Поддержка</a>--}}
                {{--</div>--}}
                <a href="mailto:mailmail@gmail.com" class="header-mail"><I class="icon-li-mail"></I>mailmail@gmail.com</a>
                <div class="header-right">
                    <div class="search">
                        <i class="icon-li-search"></i>
                        <div class="search-form">
                            <form action="">
                                <input type="text" name="search" placeholder="Поиск" class="search-text" />
                                <a href="#" class="search-btn">
                                    <i class="icon-li-search"></i>
                                </a>
                            </form>
                        </div>
                    </div>
                    <a href="#" class="heart"><i class="icon-li-heart"></i></a>
                    @if(count($locales))
                    <div class="lang">
                        <div class="lang-name">{{app()->getLocale()}}</div>
                        <i class="icon-li-arrow"></i>
                        <div class="lang-lists">
                            <div class="lang-list">
                                @foreach($locales as $l)
                                <a class="lang-list_item" href="{{'/setlocale/'.$l}}">{{$l}}</a>
                                @endforeach
                            </div>
                        </div>
                    </div>
                        @endif
                </div>
                <div class="menu-burger">
                    <span></span>
                </div>
                <div class="menu-mobile">
                    <div class="search-form">
                        <form action="">
                            <a href="#" class="search-btn">
                                <i class="icon-li-search"></i>
                            </a>
                            <input type="text" name="search" placeholder="Поиск" class="search-text" />
                        </form>
                    </div>
                    {!! menu('header', 'partials.menu-mobile') !!}
                    {{--<div class="menu-mobile-list">--}}
                        {{--<a href="#" class="menu-mobile-list_item active">Мужская</a>--}}
                        {{--<a href="#" class="menu-mobile-list_item">Женская</a>--}}
                        {{--<a href="#" class="menu-mobile-list_item">детская</a>--}}
                        {{--<a href="#" class="menu-mobile-list_item">Спортивная</a>--}}
                        {{--<a href="#" class="menu-mobile-list_item">Аксессуары</a>--}}
                        {{--<a href="#" class="menu-mobile-list_item">Поддержка</a>--}}
                    {{--</div>--}}
                    @if(count($locales))
                       <div class="lang">
                        <div class="lang-name">{{app()->getLocale()}}</div>
                        <i class="icon-li-arrow"></i>
                        <div class="lang-lists">
                            <div class="lang-list">
                                @foreach($locales as $l)
                                    <a class="lang-list_item" href="{{'/setlocale/'.$l}}">{{$l}}</a>
                                @endforeach
                            </div>
                        </div>
                    </div>
                    @endif
                    <a href="mailto:mailmail@gmail.com" class="menu-mobile-mail"><I class="icon-li-mail"></I>mailmail@gmail.com</a>
                </div>
            </div>
        </div>
    </div>
</header>