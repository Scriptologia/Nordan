<div class="menu">
    @foreach($items->translate(app()->getLocale()) as $menu_item)
        <a href="{{ $menu_item->link() }}" target="{{$menu_item->target}}" class="menu_item {{route_is_active($menu_item->link())}}">{{ $menu_item->title }}</a>
    @endforeach
</div>