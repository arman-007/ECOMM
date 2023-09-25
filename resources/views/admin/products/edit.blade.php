<x-admin.layouts.admin_master>
    <div class="container-fluid p-8">
        <form action="{{route('products.update', ['product'=>$product->id])}}" method="post" enctype="multipart/form-data">
            @csrf
            @method('PATCH')
            <div class="mb-3 row">
                <label for="inputTitle" class="col-sm-3 col-form-label">Product Name</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" id="inputTitle" name="product_name" value="{{ $product -> product_name }}">
                </div>
            </div>

            <div class="mb-3 row">
                <label for="inputTitle" class="col-sm-3 col-form-label">Product Code</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" id="inputTitle" name="product_code" value="{{ $product -> product_code }}">
                </div>
            </div>

            <div class="mb-3 row">
                <label for="inputTitle" class="col-sm-3 col-form-label">Product Quantity</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" id="inputTitle" name="product_qty" value="{{ $product -> product_qty }}">
                </div>
            </div>

            <div class="mb-3 row">
                <label for="inputTitle" class="col-sm-3 col-form-label">Product Tags</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" id="inputTitle" name="product_tags" value="{{ $product -> product_tags }}">
                </div>
            </div>

            <div class="mb-3 row">
                <label for="inputTitle" class="col-sm-3 col-form-label">Product Size</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" id="inputTitle" name="product_size" value="{{ $product -> product_size }}">
                </div>
            </div>

            <div class="mb-3 row">
                <label for="inputTitle" class="col-sm-3 col-form-label">Product Color</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" id="inputTitle" name="product_color" value="{{ $product -> product_color }}">
                </div>
            </div>

            <div class="mb-3 row">
                <label for="inputTitle" class="col-sm-3 col-form-label">Selling Price</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" id="inputTitle" name="selling_price" value="{{ $product -> selling_price }}">
                </div>
            </div>

            <div class="mb-3 row">
                <label for="inputTitle" class="col-sm-3 col-form-label">Discount Price</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" id="inputTitle" name="discount_price" value="{{ $product -> discount_price }}">
                </div>
            </div>

            <div class="mb-3 row">
                <label for="inputTitle" class="col-sm-3 col-form-label">Short Description</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" id="inputTitle" name="short_desc" value="{{ $product -> short_desc }}">
                </div>
            </div>

            <div class="mb-3 row">
                <label for="inputTitle" class="col-sm-3 col-form-label">Long Description</label>
                <div class="col-sm-9">
                    <textarea name="long_desc" id="inputTitle" cols="70" rows="5" placeholder="Write description in detail">{{ $product -> long_desc }}</textarea>
                </div>
            </div>

            <div class="mb-3 row">
                <label for="inputTitle" class="col-sm-3 col-form-label">Product Picture</label>
                <div class="col-sm-9">
                    <input type="file" class="form-control" id="inputTitle" name="product_image" value="">
                    <img src="{{ asset($product -> product_image) }}" class="img-fluid">
                </div>
            </div>


            <div class="mb-3 row">
                <label for="inputTitle" class="col-sm-3 col-form-label">Brand ID</label>
                <div class="col-sm-9">
                    <select name="brand_id" class="form-select">
                        @foreach($brands as $brand)
                        <option value="{{ $brand -> id }}" {{ $brand->id == $product->brand_id ? 'selected' : '' }}>{{ $brand->brand_name }}</option>
                        @endforeach
                    </select>
                </div>
            </div>

            <div class="mb-3 row">
                <label for="inputTitle" class="col-sm-3 col-form-label">Category ID</label>
                <div class="col-sm-9">
                    <select name="category_id" class="form-select">
                        @foreach($categories as $category)
                        <option value="{{ $category -> id }}" {{ $category->id == $product->category_id ? 'selected' : '' }}>{{ $category->category_name }}</option>
                        @endforeach
                    </select>
                </div>
            </div>

            <div class="mb-3 row">
                <label for="inputTitle" class="col-sm-3 col-form-label">Vendor ID</label>
                <div class="col-sm-9">
                    <select name="vendor_id" class="form-select">
                        @foreach($activeVendor as $vendor)
                        <option value="{{ $vendor -> id }}" {{ $vendor->id == $product->vendor_id ? 'selected' : '' }}>{{ $vendor->username }}</option>
                        @endforeach
                    </select>
                </div>
            </div>


            <div class="mb-3 row">
                <div class="col-md-6">
                    <div class="form-check">
                        <input type="checkbox" class="form-check-input" name="hot_deals" value="1" id="hotDealsCheck" {{ $product->hot_deals == 1 ? 'checked' : '' }}>
                        <label for="hotDealsCheck" class="form-check-label">Hot Deals</label>
                    </div>
                </div>
            </div>

            <div class="mb-3 row">
                <div class="col-md-6">
                    <div class="form-check">
                        <input type="checkbox" class="form-check-input" name="featured" value="1" id="featuredCheck" {{ $product->featured == 1 ? 'checked' : '' }}>
                        <label for="featuredCheck" class="form-check-label">Featured</label>
                    </div>
                </div>
            </div>

            <div class="mb-3 row">
                <div class="col-md-6">
                    <div class="form-check">
                        <input type="checkbox" class="form-check-input" name="special_offer" value="1" id="specialOfferCheck" {{ $product->special_offer == 1 ? 'checked' : '' }}>
                        <label for="specialOfferCheck" class="form-check-label">Special Offer</label>
                    </div>
                </div>
            </div>

            <div class="mb-3 row">
                <div class="col-md-6">
                    <div class="form-check">
                        <input type="checkbox" class="form-check-input" name="special_deals" value="1" id="specialDealsCheck" {{ $product->special_deals == 1 ? 'checked' : '' }}>
                        <label for="specialDealsCheck" class="form-check-label">Special Deals</label>
                    </div>
                </div>
            </div>

            <div class="mb-3 row">
                <div class="col-sm-9 offset-3">
                    <button type="submit" class="btn btn-info">Submit</button>
                </div>
            </div>
        </form>
    </div>
</x-admin.layouts.admin_master>