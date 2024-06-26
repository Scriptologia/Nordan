<div class="menu">
    @foreach($items->translate(app()->getLocale()) as $menu_item)
        <a href="{{ $menu_item->link() }}" target="{{$menu_item->target}}" class="menu_item">{{ $menu_item->title }}</a>
    @endforeach
</div>