<?php

if (!function_exists('route_is_active')) {
    function route_is_active($url = '', $class = 'active')
    {
        $url = url($url);
        return url()->full() === $url ? $class : '';
    }
}
