<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class SetLocale
{
    public static $mainLanguage = 'ru'; //основной язык, который не должен отображаться в URl

    public static $languages = ['en', 'ru']; // Указываем, какие языки будем использовать в приложении.

    public static function getLocale()
    {
        $locale = Request()->segment(1);
        if (!empty($locale) && in_array($locale, self::$languages) && $locale !== self::$mainLanguage) {
            app()->setLocale($locale);
            return $locale;
        }
        if ($locale == self::$mainLanguage) return $locale;
        return '';
    }

    public static function getUrl ($locale) {
        $url = url()->previous();

        if (!empty($locale) && in_array($locale, self::$languages)) { app()->setLocale($locale); }
        else {  return $url; }

//        dd(request()->create($url)->path(),parse_url($url), url()->previous(), parse_url($url)['path']);
        $array = parse_url($url);
        $path = $array['path'];
        $loc = explode('/',$path);
        if (!empty($loc[1]) && in_array($loc[1], self::$languages) ) {
            $loc[1] = $locale;
            if($locale === self::$mainLanguage) {
                unset($loc[1]);
            }
            $path = implode("/", $loc);
        }
        else {
            if($locale !== self::$mainLanguage) {
                $path = '/'.$locale.$path;
            }
        }
        $query = !empty($array['query'])? '?'.$array['query'] : '';
        $fragment = !empty($array['fragment'])?  '#' . $array['fragment']: '';
        $path = !empty($path)?  $path: '';

        $url = $array['scheme'].'://'.$array['host'].$path.$query.$fragment;
        return $url;
    }
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
//        $locale = ltrim(Request()->route()->getPrefix(), '/');
        $locale = self::getLocale();
        if($locale) app()->setLocale($locale);
        else app()->setLocale(self::$mainLanguage);
        return $next($request);
    }
}
