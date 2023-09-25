<x-admin.layouts.admin_master>
<div class="row">
    <div class="col-12 col-lg-12 col-xxl-9 d-flex">
        <div class="card flex-fill">
            <div class="card-header">
                <h1 class="card-title mb-0">Products</h1>
                <div class="pull-right">
                    <a href="{{route('products.create')}}" class="btn btn-info">Create New Product</a>
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
                    @foreach ($products as $key =>  $product)
                    <tr>
                        <td>{{ $key+1 }}</td>
                        <td class="d-none d-xl-table-cell">{{ $product -> product_name }}</td>
                        <td class="d-none d-xl-table-cell">
                            <img src="{{asset($product -> product_image)}}" alt="" style="width:70px;height:40px" >
                        </td>
                        <td><span class="badge bg-success" >Done</span></td>
                        <td class="d-none d-md-table-cell btn-group" role="group">
                            <a href="{{route('products.show', ['product'=>$product->id])}}" class="btn btn-success btn-sm">SHOW</a>
                            <a href="{{route('products.edit', ['product'=>$product->id])}}" class="btn btn-warning btn-sm">EDIT</a>
                            <form class="" action="{{route('products.destroy',['product' => $product -> id])}}" method="post">
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