<?php

namespace App\Http\Controllers;

use App\Http\Resources\ProductResource;
use App\Models\Collection;
use App\Models\Color;
use App\Models\Market;
use App\Models\News;
use App\Models\Product;
use App\Models\Size;
use App\Models\Slider;
use App\Models\Type;
use Illuminate\Http\Request;

class IndexController extends Controller
{
    public function index()
    {
        $mainslider = Slider::get();
        $news = News::withTranslation(app()->getLocale())->latest()->first();
        return view('pages.index', compact('mainslider', 'news'));
    }

    public function card(Product $product)
    {
//        $product = $product->withTranslation(app()->getLocale())->get();
//        $product = $product->translate(app()->getLocale());

        return view('pages.card', compact('product'));
    }

//    public function catalog(Request $request)
//    {
////        dd($request->all());
//        $sizes = Size::get();
//        $types = Type::get();
//        $markets = Market::get();
//        $collection = Collection::get();
//        $colors = Color::get();
//        $products = Product::with(['type', 'collection', 'markets'])->paginate(1)->withQueryString();
//
//        return view('pages.catalog', compact('products', 'sizes', 'types', 'markets', 'collection', 'colors'));
//    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function apiGetProducts(Request $request)
    {
        $filterable = ['type', 'collection', 'colors', 'sizes', 'markets', 'waterproof'] ;
        $products = Product::withTranslation(app()->getLocale());
        $pages = 12;

        $segment = $request->segment(2);
//        dd($segment);
        $queryArray = [];
        if($segment) {
            $data = [];
            $queryArray = explode(';', $segment);
            foreach ($queryArray as $i => $value) {
                $valArray = explode('=', $value);
                if (!in_array($valArray[0], $filterable)) continue;
                if (empty($valArray[1])) continue;
                $valArray2 = explode(',', $valArray[1]);
                $data[$valArray[0]] = $valArray2;
            }
        }

        if(!empty($request->except('page'))) {
            $data = [];
            if($request->type) $data['type'] = [$request->type];
            if($request->collection) $data['collection'] = [$request->collection];
            if($request->colors) $data['colors'] = $request->colors;
            if($request->sizes) $data['sizes'] = $request->sizes;
            if($request->markets) $data['markets'] = $request->markets;
            if($request->waterproof) $data['waterproof'] = [$request->waterproof];
        }

        if(!empty($data)){
            if(!empty($data['type'])) { $type = $data['type']; $products = $products->whereHas('type' , function($query) use( $type ) { $query->whereIn('slug', $type );});}
        //            if($data['type']) $products = $products->whereIn('type_id' , $data['type']);
            if(!empty($data['collection'])) { $collection = $data['collection']; $products = $products->whereHas('collection' , function($query) use( $collection ) { $query->whereIn('slug', $collection );});}
//            if($data['collection']) $products = $products->whereIn('collection_id' , $data['collection']);
            if(!empty($data['waterproof'])) { $waterproof = $data['waterproof']; $products = $products->whereIn('waterproof' , $data['waterproof']);}
            if(!empty($data['sizes'])) { $sizes = $data['sizes']; $products = $products->whereHas('sizes' , function($query) use( $sizes ) { $query->whereIn('id', $sizes );});}
            if(!empty($data['colors'])) { $colors = $data['colors']; $products = $products->whereHas('colors' , function($query) use($colors) { $query->whereIn('slug', $colors);});}
            if(!empty($data['markets'])) { $markets = $data['markets']; $products = $products->whereHas('markets' , function($query) use($markets) { $query->whereIn('slug', $markets);});}

            $queryArray = $data;
//            $queryArray = ['type' => $data['type'], 'waterproof' => $data['waterproof'], 'collection' => $data['collection'], 'colors' => $data['colors'], 'sizes' => $data['sizes'], 'markets' => $data['markets']];
        }

//        $search = $request->search;
            //->search($search)
        $string ='';
        if (!empty($data)) {
            foreach ($data as $i => $val) {
                $string .= $i . '=' . implode(',', $val) . ';';
            }
        }
//        $url = $request->fullUrl();
        $url = route('catalog', ['any' => $string, 'page' => $request->input('page') == 1? null: $request->input('page')]);
//dd($string, $url);
        $products = $products->paginate($pages)->withPath($string);//->withQueryString($queryArray);
        if ($request->ajax()) {

//            $request = $request->fullUrlWithQuery($queryArray);
//            $products = ProductResource::collection($products);
            $productHTML = view('partials.products')->with('products', $products)->render();
            $paginatorHTML = $products->withPath($string)->links('partials.paginator')->render();
//            $paginatorHTML = $products->appends($queryArray)->links('partials.paginator')->render();
            return response()->json(array('success' => true, 'productHTML' => $productHTML, 'paginatorHTML' => $paginatorHTML, 'url' => $url, 'queryArray' => $queryArray));
        }
        else {
            $sizes = Size::get();
            $types = Type::get()->translate(app()->getLocale());
            $markets = Market::get()->translate(app()->getLocale());
            $collection = Collection::get()->translate(app()->getLocale());
            $colors = Color::get()->translate(app()->getLocale());
//            $products = Product::with(['type', 'collection', 'markets'])->paginate($pages)->withQueryString();

//            return redirect($url)->with(compact('products', 'sizes', 'types', 'markets', 'collection', 'colors', 'queryArray', 'url'));
            return view('pages.catalog', compact('products', 'sizes', 'types', 'markets', 'collection', 'colors', 'queryArray', 'url'));
        }
    }

}
