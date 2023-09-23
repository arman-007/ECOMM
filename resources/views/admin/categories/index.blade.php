<x-admin.layouts.admin_master>
<div class="row">
    <div class="col-12 col-lg-12 col-xxl-9 d-flex">
        <div class="card flex-fill">
            <div class="card-header">
                <h1 class="card-title mb-0">Categories</h1>
                <div class="pull-right">
                    <a href="{{route('categories.create')}}" class="btn btn-info">Create New Category</a>
                </div>
            </div>
            <table class="table table-hover my-0">
                <thead>
                    <tr>
                        <th>SL#</th>
                        <th class="d-none d-xl-table-cell">Name</th>
                        <th class="d-none d-xl-table-cell">Picture</th>
                        <th>Status</th>
                        <th class="d-none d-md-table-cell">Action</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($categories as $key =>  $category)
                    <tr>
                        <td>{{ $key+1 }}</td>
                        <td class="d-none d-xl-table-cell">{{ $category -> category_name }}</td>
                        <td class="d-none d-xl-table-cell">
                            <img src="{{asset($category -> category_image)}}" alt="" style="width:70px;height:40px" >
                        </td>
                        <td><span class="badge bg-success">Done</span></td>
                        <td class="d-none d-md-table-cell">
                            <a href="{{route('categories.show', ['category'=>$category->id])}}" class="btn btn-success btn-sm">SHOW</a>
                            <a href="{{route('categories.edit', ['category'=>$category->id])}}" class="btn btn-warning btn-sm">EDIT</a>
                            <form style="display:inline" action="{{route('categories.destroy',['category' => $category -> id])}}" method="post">
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