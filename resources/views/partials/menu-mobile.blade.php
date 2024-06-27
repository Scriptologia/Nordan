<div class="menu-mobile-list">
    @foreach($items as $menu_item)
        <a href="{{ $menu_item->link() }}" class="menu-mobile-list_item {{route_is_active($menu_item->link())}}">{{ $menu_item->title }}</a>
    @endforeach
</div>