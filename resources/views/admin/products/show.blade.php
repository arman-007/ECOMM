<x-admin.layouts.admin_master>
    <div class="container-fluid p-8">
        <div class="mb-3 row">
            <p for="inputTitle" class="col-sm-3 col-form-label">Slider Title:</p>
            <div class="col-sm-9">
                <p>{{ $slider -> slider_title }}</p>
            </div>
        </div>
        <div class="mb-3 row">
            <p for="inputTitle" class="col-sm-3 col-form-label">Slider Description:</p>
            <div class="col-sm-9">
                <p>{{ $slider -> slider_desc }}</p>
            </div>
        </div>
        <div class="mb-3 row">
            <label for="inputTitle" class="col-sm-3 col-form-label">Slider Picture:</label>
            <div class="col-sm-9 container">
                <img src="{{asset($slider -> slider_image)}}" alt="" class="img-fluid">
            </div>
        </div>
        <div class="mb-3 row">
            <div class="col-sm-9 offset-3">
                <a href="{{route('sliders.index')}}" class="btn btn-success">LIST</a>
            </div>
        </div>
    </div>
</x-admin.layouts.admin_master>
