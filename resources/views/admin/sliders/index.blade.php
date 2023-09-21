<x-admin.layouts.admin_master>
<div class="row">
    <div class="col-12 col-lg-12 col-xxl-9 d-flex">
        <div class="card flex-fill">
            <div class="card-header">
                <h1 class="card-title mb-0">Sliders</h1>
                <div class="pull-right">
                    <a href="{{route('sliders.create')}}" class="btn btn-info">Create New Slider</a>
                </div>
            </div>
            <table class="table table-hover my-0">
                <thead>
                    <tr>
                        <th>SL#</th>
                        <th class="d-none d-xl-table-cell">Title</th>
                        <th class="d-none d-xl-table-cell">Picture</th>
                        <th>Status</th>
                        <th class="d-none d-md-table-cell">Action</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($sliders as $key =>  $slider)
                    <tr>
                        <td>{{ $key+1 }}</td>
                        <td class="d-none d-xl-table-cell">{{ $slider -> slider_title }}</td>
                        <td class="d-none d-xl-table-cell">
                            <img src="{{asset($slider -> slider_image)}}" alt="" style="width:70px;height:40px" >
                        </td>
                        <td><span class="badge bg-success" >Done</span></td>
                        <td class="d-none d-md-table-cell btn-group" role="group">
                            <a href="{{route('sliders.show', ['slider'=>$slider->id])}}" class="btn btn-success btn-sm">SHOW</a>
                            <a href="{{route('sliders.edit', ['slider'=>$slider->id])}}" class="btn btn-warning btn-sm">EDIT</a>
                            <form class="" action="{{route('sliders.destroy',['slider' => $slider -> id])}}" method="post">
                                @csrf
                                @method('DELETE')
                                <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Do you really want to delete this?')">DELETE</button>
                            </form>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>
</x-admin.layouts.admin_master>