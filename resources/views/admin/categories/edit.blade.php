<x-admin.layouts.admin_master>
    <div class="container-fluid p-8">
        <form action="{{route('categories.update',['category'=>$category->id])}}" method="post" enctype="multipart/form-data">
            @csrf
            @method('patch')

            <div class="mb-3 row">
                <label for="inputTitle" class="col-sm-3 col-form-label">Category Name</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" id="inputTitle" name="category_name" value="{{ $category -> category_name }}">
                </div>
            </div>

            <div class="mb-3 row">
                <label for="inputTitle" class="col-sm-3 col-form-label">Category Description</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" id="inputTitle" name="category_slug" value="{{ $category -> category_slug }}">
                </div>
            </div>

            <div class="mb-3 row">
                <label for="inputTitle" class="col-sm-3 col-form-label">Picture</label>
                <div class="col-sm-9">
                    <input type="file" class="form-control" id="inputTitle" name="category_image" value="">
                    <img src="{{asset($category -> category_image)}}" alt="" class="img-fluid mt-4">
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
