<div class="footer-menu">
    @foreach($items->translate(app()->getLocale()) as $menu_item)
        <div class="footer-menu_block">
            <h4>{{$menu_item->title}}</h4>
            @forelse($menu_item->children->translate(app()->getLocale()) as $child)
            <a href="{{$child->link()}}" target="{{$child->target}}">{{$child->title}}</a>
                @empty
            @endforelse
        </div>
    @endforeach
</div>