@if ($paginator->hasPages())
    <div class="paginator mx-60">
        <div class="paginator_block">
            @if ($paginator->onFirstPage())
                {{--<li class="page-item"><span>&laquo;</span></li>--}}
            @else
                <a href="{{ $paginator->previousPageUrl() }}" class="paginator_block_previous"><i class="icon-li-arrow"></i></a>
            @endif
            @foreach ($elements as $element)
                @if (is_string($element))
{{--                    <li class="page-item disabled"><span>{{ $element }}</span></li>--}}
                        <span class="paginator_block_points">{{ $element }}...</span>
                @endif
                @if (is_array($element))
                    @foreach ($element as $page => $url)
                        @if ($page == $paginator->currentPage())
                                <span class="paginator_block_number active">{{ $page }}</span>
                        @else
                                <a href="{{ $url }}" class="paginator_block_number">{{ $page }}</a>
                        @endif
                    @endforeach
                @endif
            @endforeach
            @if ($paginator->hasMorePages())
                <a href="{{ $paginator->nextPageUrl() }}" class="paginator_block_next"><i class="icon-li-arrow"></i></a>
            @else
                {{--<li class="page-item disabled"><span>&raquo;</span></li>--}}
        @endif
        </div>
    </div>
@endif