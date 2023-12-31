<x-admin.layouts.admin_master>
    <div class="container-fluid p-8">
        <form action="{{route('brands.update',['brand'=>$brand->id])}}" method="post" enctype="multipart/form-data">
            @csrf
            @method('patch')
            <div class="mb-3 row">
                <label for="inputTitle" class="col-sm-3 col-form-label">Brand</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" id="inputTitle" name="brand_name" value="{{ $brand -> brand_name }}">
                </div>
            </div>
            <div class="mb-3 row">
                <label for="inputTitle" class="col-sm-3 col-form-label">Picture</label>
                <div class="col-sm-9">
                    <input type="file" class="form-control" id="inputTitle" name="brand_image" value="">
                    <img src="{{asset($brand -> brand_image)}}" alt="" class="img-fluid mt-4">
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
