<footer class="bg-main">
    <div class="container-liquid bg-main">
        <div class="container-inner">
            <div class="footer">
                <div class="footer-info">
                    <a href="/" class="footer-info_logo">
                        <img src="{{asset('images/img/logo.png')}}" alt=""><img src="{{asset('images/img/logo-text.png')}}" alt="">
                    </a>
                    <div class="footer-info_copyright">© 2023. @lang('text.footer_rights')</div>
                    <a class="footer-info_link">@lang('text.footer_politic')</a>
                </div>
                {!! menu('footer', 'partials.menu-footer') !!}
            </div>
        </div>
    </div>
    <div class="container-liquid bg-black">
        <div class="container-inner">
            <div class="footer-2">
                <div class="footer-2_text">
                    @lang('text.footer_description')
                </div>
                <img src="{{asset('images/img/image-bottom.png')}}" alt="">
            </div>
        </div>
    </div>
</footer>