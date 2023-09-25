<x-admin.layouts.admin_master>
<div class="container-fluid p-8">
    <div class="mb-3 row">
        <p for="inputTitle" class="col-sm-3 col-form-label">Product Name</p>
        <div class="col-sm-9">
            <p>{{ $product -> product_name }}</p>
        </div>
    </div>

    <div class="mb-3 row">
        <p for="inputTitle" class="col-sm-3 col-form-label">Product Code</p>
        <div class="col-sm-9">
            <p>{{ $product -> product_code }}</p>
        </div>
    </div>

    <div class="mb-3 row">
        <p for="inputTitle" class="col-sm-3 col-form-label">Product Quantity</p>
        <div class="col-sm-9">
            <p>{{ $product -> product_qty }}</p>
        </div>
    </div>

    <div class="mb-3 row">
        <p for="inputTitle" class="col-sm-3 col-form-label">Product Tags</p>
        <div class="col-sm-9">
            <p>{{ $product -> product_tags }}</p>
        </div>
    </div>

    <div class="mb-3 row">
        <p for="inputTitle" class="col-sm-3 col-form-label">Product Size</p>
        <div class="col-sm-9">
            <p>{{ $product -> product_size }}</p>
        </div>
    </div>

    <div class="mb-3 row">
        <p for="inputTitle" class="col-sm-3 col-form-label">Product Color</p>
        <div class="col-sm-9">
            <p>{{ $product -> product_color }}</p>
        </div>
    </div>

    <div class="mb-3 row">
        <p for="inputTitle" class="col-sm-3 col-form-label">Selling Price</p>
        <div class="col-sm-9">
            <p>{{ $product -> selling_price }}</p>
        </div>
    </div>

    <div class="mb-3 row">
        <p for="inputTitle" class="col-sm-3 col-form-label">Discount Price</p>
        <div class="col-sm-9">
            <p>{{ $product -> discount_price }}</p>
        </div>
    </div>

    <div class="mb-3 row">
        <p for="inputTitle" class="col-sm-3 col-form-label">Short Description</p>
        <div class="col-sm-9">
            <p>{{ $product -> short_desc }}</p>
        </div>
    </div>

    <div class="mb-3 row">
        <p for="inputTitle" class="col-sm-3 col-form-label">Long Description</p>
        <div class="col-sm-9">
            <p>{{ $product -> long_desc }}</p>
        </div>
    </div>
    
    <div class="mb-3 row">
        <p for="inputTitle" class="col-sm-3 col-form-label">Product Picture</p>
        <div class="col-sm-9">
            <img src="{{ asset($product -> product_image) }}" class="img-fluid">
        </div>
    </div>

    
    <div class="mb-3 row">
        <p for="inputTitle" class="col-sm-3 col-form-label">Brand ID</p>
        <div class="col-sm-9">
            <p>{{ $product -> brand_id }}</p>            
        </div>
    </div>

    <div class="mb-3 row">
        <p for="inputTitle" class="col-sm-3 col-form-label">Category ID</p>
        <div class="col-sm-9">
            <p>{{ $product -> category_id }}</p>            
        </div>
    </div>

    <div class="mb-3 row">
        <p for="inputTitle" class="col-sm-3 col-form-label">Vendor ID</p>
        <div class="col-sm-9">
            <p>{{ $product -> vendor_id }}</p>            
        </div>
    </div>


    <div class="mb-3 row">
        <p for="inputTitle" class="col-sm-3 col-form-label">Hot Deals</p>
        <div class="col-sm-9">
            <p>{{ $product -> hot_deals }}</p>            
        </div>
    </div>

    <div class="mb-3 row">
    <p for="inputTitle" class="col-sm-3 col-form-label">Featured</p>
        <div class="col-sm-9">
            <p>{{ $product -> featured }}</p>            
        </div>
    </div>

    <div class="mb-3 row">
        <p for="flexCheckDefault" class="col-sm-3 col-form-label">Special Offer</p>
        <div class="col-md-6">
            <p>{{ $product -> special_offer }}</p>  
        </div>
    </div>

    <div class="mb-3 row">
        <p for="flexCheckDefault" class="col-sm-3 col-form-label">Special Deals</p>
        <div class="col-md-6">
            <p>{{ $product -> special_offer }}</p> 
        </div>
    </div>
</div>
</x-admin.layouts.admin_master>
