<?php

namespace App\Http\Controllers;

use App\Http\Resources\ProductResource;
use App\Models\News;
use Illuminate\Http\Request;

class NewsController extends Controller
{
    protected $casts = ['created_at' => 'datetime: d-m-Y',];

    public function index()
    {
        $news = News::withTranslation(app()->getLocale())->paginate(6);
        return view('pages.news', compact('news'));
    }

    public function show(News $news)
    {
//        $news = $news->translate(app()->getLocale());
        return view('pages.news-item', compact('news'));
    }

}
