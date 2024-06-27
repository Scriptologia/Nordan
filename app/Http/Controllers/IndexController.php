<?php

namespace App\Http\Controllers;

use App\Http\Resources\ProductResource;
use App\Models\Collection;
use App\Models\Color;
use App\Models\Market;
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
//        dd($mainslider);
        return view('pages.index', compact('mainslider'));
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
        $pages = 12;
//        $search = $request->search;
        $type = $request->type;
        $collection = $request->collection;
        $colors = $request->colors;
        $sizes = $request->sizes;
        $markets = $request->markets;
        $waterproof = $request->waterproof;

        $products = Product::withTranslation(app()->getLocale());
        if($type) $products = $products->where('type_id' , $type);
        if($collection) $products = $products->where('collection_id' , $collection);
        if($waterproof) $products = $products->where('waterproof' , $waterproof);
        if($sizes) $products = $products->whereHas('sizes' , function($query) use($sizes) { $query->whereIn('id', $sizes);});
        if($colors) $products = $products->whereHas('colors' , function($query) use($colors) { $query->whereIn('id', $colors);});
        if($markets) $products = $products->whereHas('markets' , function($query) use($markets) { $query->whereIn('id', $markets);});

        $queryArray = ['type' => $type, 'waterproof' => $waterproof, 'collection' => $collection, 'colors' => $colors, 'sizes' => $sizes, 'markets' => $markets];
            //->search($search)
        $products = $products->paginate($pages)->withQueryString($queryArray);
        if ($request->ajax()) {
//            $products = ProductResource::collection($products);
            $productHTML = view('partials.products')->with('products', $products)->render();
            $paginatorHTML = $products->appends($queryArray)->links('partials.paginator')->render();

            $request = $request->fullUrlWithQuery($queryArray);
            return response()->json(array('success' => true, 'productHTML' => $productHTML, 'paginatorHTML' => $paginatorHTML, 'url' => $request, 'queryArray' => $queryArray));
        }
        else {
            $sizes = Size::get();
            $types = Type::get()->translate(app()->getLocale());
            $markets = Market::get()->translate(app()->getLocale());
            $collection = Collection::get()->translate(app()->getLocale());
            $colors = Color::get()->translate(app()->getLocale());
//            $products = Product::with(['type', 'collection', 'markets'])->paginate($pages)->withQueryString();

            return view('pages.catalog', compact('products', 'sizes', 'types', 'markets', 'collection', 'colors', 'queryArray'));
        }
    }

}
