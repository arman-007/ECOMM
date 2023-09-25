<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\Category;
use App\Models\Brand;
use App\Models\User;
use Image;
use Carbon\carbon;

use Illuminate\Http\Request;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $products = Product::all();
        return view('admin.products.index', compact('products'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $activeVendor = User::where('status', 'active')->where('role', 'vendor')->latest()->get();
        $brands = Brand::latest()->get();
        $categories = Category::latest()->get();
        return view('admin.products.create', compact('brands', 'categories', 'activeVendor'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $image = $request -> file('product_image');
        $fileName = hexdec(uniqid()).'.'.$image->getClientOriginalExtension();
        Image::make($image)->resize(800,800)->save('upload/product/'.$fileName);
        $save_url = 'upload/product/'.$fileName;
        Product::create([
            'brand_id' => $request -> brand_id,
            'category_id' => $request -> category_id,
            'product_name' => $request -> product_name,
            'product_slug' => strtolower(str_replace('','_',$request -> product_name)),
            'product_code' => $request -> product_code,
            'product_qty' => $request -> product_qty,
            'product_tags' => $request -> product_tags,
            'product_size' => $request -> product_size,
            'product_color' => $request -> product_color,
            'selling_price' => $request -> selling_price,
            'discount_price' => $request -> discount_price,
            'short_desc' => $request -> short_desc,
            'long_desc' => $request -> long_desc,
            'vendor_id' => $request -> vendor_id,
            'hot_deals' => $request -> hot_deals,
            'featured' => $request -> featured,
            'special_offer' => $request -> special_offer,
            'special_deals' => $request -> special_deals,

            'status' => 1,

            'product_image' => $save_url,
            'created_at' => Carbon::now(),
        ]);
        return redirect()->route('products.index');
    }

    /**
     * Display the specified resource.
     */
    public function show(Product $product)
    {
        return view('admin.products.show',[
            'product' => $product
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Product $product)
    {
        $activeVendor = User::where('status', 'active')->where('role', 'vendor')->latest()->get();
        $brands = Brand::latest()->get();
        $categories = Category::latest()->get();
        return view('admin.products.edit',compact('brands', 'categories', 'activeVendor', 'product'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Product $product)
    {
        $image = $request -> file('product_image');
        $fileName = hexdec(uniqid()).'.'.$image->getClientOriginalExtension();
        Image::make($image)->resize(800,800)->save('upload/product/'.$fileName);
        $save_url = 'upload/product/'.$fileName;
        $product->update([
            'brand_id' => $request -> brand_id,
            'category_id' => $request -> category_id,
            'product_name' => $request -> product_name,
            'product_slug' => strtolower(str_replace('','_',$request -> product_name)),
            'product_code' => $request -> product_code,
            'product_qty' => $request -> product_qty,
            'product_tags' => $request -> product_tags,
            'product_size' => $request -> product_size,
            'product_color' => $request -> product_color,
            'selling_price' => $request -> selling_price,
            'discount_price' => $request -> discount_price,
            'short_desc' => $request -> short_desc,
            'long_desc' => $request -> long_desc,
            'vendor_id' => $request -> vendor_id,
            'hot_deals' => $request -> hot_deals,
            'featured' => $request -> featured,
            'special_offer' => $request -> special_offer,
            'special_deals' => $request -> special_deals,

            'status' => 1,

            'product_image' => $save_url,
            'created_at' => Carbon::now(),
        ]);
        return redirect()->route('products.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Product $product)
    {
        $product->delete();
        return redirect()->route('products.index');
    }

    public function ProductInactive($id){
        Product::findOrFail($id)->update(['status' => 0]);
        return redirect()->route('products.index');
    }
    
    public function ProductActive($id){
        Product::findOrFail($id)->update(['status' => 1]);
        return redirect()->route('products.index');
    }
}
