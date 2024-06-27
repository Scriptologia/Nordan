$(document).ready(function() {
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    if(typeof queryArray !== "undefined") setFilters(queryArray);
    //меню бургер
    $('.menu-burger').click(function() {
        $('.menu-burger').toggleClass('open-menu');
        $('.menu-mobile').toggleClass('open');
        $('body').toggleClass('fixed');
    });

    $('.menu-mobile-list_item').click(function(e){
        // e.preventDefault();
        let $this = $(this);
        if($this.find(".menu-mobile-list_item_submenu").length == 0) {
            $('.menu-burger').click();
        }
        if (!$this.hasClass("active")) {
            $(".menu-mobile-list_item_submenu").slideUp(400);
            $(".menu-mobile-list_item").removeClass("active");
        }
        $this.toggleClass("active");
        $this.find(".menu-mobile-list_item_submenu").slideToggle();
    })

    $('.lang').on('click', function(e) {
        $(this).find('.lang-lists').toggle()
    })
    $('.search > i').on('click', function(e) {
        $(this).parent('.search').find('.search-form').show()
    })
//отслеживаем клик вне блока
    $(document).on('click', function(e) {
        let div = $('.lang');
        let div1 = $('.search');
        if(!div.is(e.target) && div.has(e.target).length === 0 ) $('.lang-lists').hide();
        if(!div1.is(e.target) && div1.has(e.target).length === 0 ) div1.find('.search-form').hide();
    })

    // $('.accordion  .accordion-table_list_item .header').click(function(e){
    //     var $this = $(this).parent('.accordion-table_list_item');
    //     if (!$this.hasClass("active")) {
    //         $(".accordion-table_list_item .body").slideUp(400);
    //         $(".accordion-table_list_item").removeClass("active");
    //     }
    //     if ($this.hasClass("active")) {
    //         $this.find(".body").css('display', 'block')
    //     }
    //     else {
    //         $this.find(".body").css('display', 'none')
    //     }
    //     $this.toggleClass("active");
    //     $this.find(".body").slideToggle("slow");
    // })
    // $('.accordion  .faq_list_item .header').click(function(e){
    //     var $this = $(this).parent('.faq_list_item');
    //     if (!$this.hasClass("active")) {
    //         $(".faq_list_item .body").slideUp(300);
    //         $(".faq_list_item").removeClass("active");
    //     }
    //     if ($this.hasClass("active")) {
    //         $this.find(".body").css('display', 'block')
    //     }
    //     else {
    //         $this.find(".body").css('display', 'none')
    //     }
    //     $this.toggleClass("active");
    //     $this.find(".body").slideToggle(300);
    // })

    // slider
    $('.main-slider_slider').slick({
            dots: true,
            infinite: true,
        adaptiveHeight: true,
            speed: 300,
            arrows:false,
            autoplay: true,
            autoplaySpeed: 2000,
            // prevArrow: $('.main-slider .prev'),
            // nextArrow: $('.main-slider .next'),
            appendDots: $('.dots-items'),
            dotsClass: 'dots-items_list',
            customPaging : function(slider, i) {
                return '<div class="dot"></div>';
            },
            slidesToScroll: 1,
            slidesToShow: 1,
            responsive: [
                {
                    breakpoint: 768,
                    settings: {
                        slidesToScroll: 1,
                        slidesToShow: 1,
                    }
                }
            ]
        });

    $('.icon-slider_slider').slick({
        dots: true,
        infinite: true,
        adaptiveHeight: true,
        speed: 300,
        // arrows:false,
        // asNavFor: '.icon-slider_slider',
        prevArrow: $('.icon-slider_arrow.prev'),
        nextArrow: $('.icon-slider_arrow.next'),
        appendDots: $('.icon-slider_dots'),
        dotsClass: 'icon-slider_dots_list',
        customPaging : function(slider, i) {
            return '<div class="dot"></div>';
        },
        slidesToScroll: 1,
        slidesToShow: 4,
        responsive: [
            {
                breakpoint: 768,
                settings: {
                    slidesToShow: 2
                }
            },
            {
                breakpoint: 360,
                settings: {
                    slidesToShow: 1
                }
            }
        ]
    });

    $('.product-slider-main').slick({
        dots: false,
        infinite: false,
        speed: 300,
        adaptiveHeight: true,
        // autoplay: true,
        arrows: false,
        fade: true,
        adaptiveHeight: true,
        asNavFor: '.product-slider-nav',
        slidesToShow: 1,
        slidesToScroll: 1,
        useTransform: true,
    });
    $('.product-slider-nav').slick({
        slidesToShow: 3,
        slidesToScroll: 1,
        focusOnSelect: false,
        arrows: false,
        dots: false,
        infinite: false,
        asNavFor: '.product-slider-main',
        // prevArrow: $('.preview-slider_nav .prev'),
        // nextArrow: $('.preview-slider_nav .next'),
        dots: false,
        // centerMode: true,
        focusOnSelect: true,
        responsive: [
            {
                breakpoint: 768,
                settings: {
                    slidesToShow: 3
                }
            },
            {
                breakpoint: 360,
                settings: {
                    slidesToShow: 2
                }
            }
        ]
    });

function setFilters(queryArray = []){
    console.log(queryArray, queryArray.type)
    let filters = $('.catalog-filters')
    filters.find('#collection  select').val(queryArray.collection)
    filters.find('#type  select').val(queryArray.type)
    filters.find('#waterproof  input').val(queryArray.waterproof)
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
        $.post( route.catalog, data, function( response ){
                if(response.success){
                    console.log(response)
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
    })

        $(document).on('click', '.paginator a', function(e) {
            e.preventDefault();
            href = $(this).attr('href');
            let data = {
                    "href": href
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

    // let rating = $('.reiting').raty({
    //     readOnly:   true,
    //     path:        'assets/reiting/images',
    //     score:3
    //     // path:        '/wp-content/themes/autogas/assets/reiting/images',
    // });
    // $("[name='phone']").mask("+7(999) 999-99-99");
    // $('.ajax-callback').on("submit", function(e) {
    //     e.preventDefault();
    //     let phone = $(this).find($("[name='phone']")).val();
    //     var data = {
    //         action: 'phone_to_email',
    //         phone: phone,
    //         nonce_code : myajax.nonce
    //     };
    //     // с версии 2.8 'ajaxurl' всегда определен в админке
    //     jQuery.post( myajax.url, data, function( response ){
    //         if(response.success){
    //             // let modal = '\n' +
    //             //     '<div class="modal active">\n' +
    //             //     '    <div class="modal-layout">\n' +
    //             //     '    </div>\n' +
    //             //     '    <div class="modal-content">\n' +
    //             //     '        <h2>Спасибо</h2>\n' +
    //             //     '        <p>Заявка успешно отправленна и мы с Вами свяжемся в ближайшее время!</p>\n' +
    //             //     '        <a href="/" class="btn">На главную</a>\n' +
    //             //     '    </div>\n' +
    //             //     '</div>';
    //             // $('body').prepend(modal)
    //             document.location.href = '/success'
    //             console.log( 'Получено с сервера: ' + response );
    //         }
    //         else {
    //             console.log( 'Получено с сервера: ' + response );
    //         }
    //     });
    // });
    // $('.form-modal-open').on('click', function() {
    //     $('.modal').addClass('active')
    // })
    $('body').on('click','.modal-layout', function(e) {
        $(this).parent('.modal').removeClass('active')
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
});