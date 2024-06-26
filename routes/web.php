<?php

use Illuminate\Support\Facades\Route;
use App\Http\Middleware\SetLocale;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/
//
//Route::get('/{locale}', function ($locale) {
//    App::setLocale($locale);
//});
Route::get('/setlocale/{locale}', function ($locale, \Illuminate\Http\Request $request) {
    $url = SetLocale::getUrl($locale);
//    dd($url, app()->getLocale());
    return redirect()->to($url );
})->name('setlocale');

Route::group(['prefix' => SetLocale::getLocale()], function () {
    Route::get('/', 'IndexController@index')->name('index');
//    Route::get('/catalog/{any?}', 'IndexController@catalog')->where('any', '.*')->name('catalog');
    Route::any('/catalog', 'IndexController@apiGetProducts')->where('any', '.*')->name('api-get-products');
    Route::get('/card/{product:slug}', 'IndexController@card')->name('card');
});


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
