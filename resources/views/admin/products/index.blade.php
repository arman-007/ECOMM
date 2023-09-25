<x-admin.layouts.admin_master>
<div class="row">
    <div class="col-12 col-lg-12 col-xxl-9 d-flex">
        <div class="card flex-fill">
            <div class="card-header">
                <h1 class="card-title mb-0">Products</h1>
                <div class="pull-right">
                    <a href="{{route('products.create')}}" class="btn btn-info">Create New Product</a>
                    <span>Number of products: {{ count($products) }}</span>
                </div>
            </div>
            <table class="table table-hover my-0">
                <thead>
                    <tr>
                        <th>SL#</th>
                        <th class="d-none d-xl-table-cell">Name</th>
                        <th class="d-none d-xl-table-cell">Price</th>
                        <th class="d-none d-xl-table-cell">Quantity</th>
                        <th class="d-none d-xl-table-cell">Discount Price</th>
                        <th class="d-none d-xl-table-cell">Status</th>
                        <th class="d-none d-xl-table-cell">Picture</th>
                        <th class="d-none d-md-table-cell">Action</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($products as $key =>  $product)
                        <tr>
                            <td>{{ $key+1 }}</td>
                            <td class="d-none d-xl-table-cell">{{ $product -> product_name }}</td>
                            <td class="d-none d-xl-table-cell">{{ $product -> selling_price }}</td>
                            <td class="d-none d-xl-table-cell">{{ $product -> product_qty }}</td>
                            
                            <td>
                                @if($product -> discount_price == NULL)
                                    <span class="badge rounded-pill bg-info">No Discount</span>
                                @else
                                    @php
                                        $amount = (float)$product->selling_price - (float)$product->discount_price;
                                        $discount = ($amount / (float)$product->selling_price) * 100;
                                    @endphp
                                    <span class="badge rounded-pill bg-danger">{{ round($discount) }}%</span>
                                @endif
                            </td>

                            <td>
                                @if($product->status == 1)
                                    <span class="badge rounded-pill bg-success">Active</span>
                                @else
                                    <span class="badge rounded-pill bg-danger">Inactive</span>
                                @endif
                            </td>

                            <td class="d-none d-xl-table-cell">
                                <img src="{{asset($product -> product_image)}}" alt="" style="width:70px;height:40px" >
                            </td>

                            <td class="d-none d-md-table-cell btn-group" role="group">
                                @if($product->status == 1)
                                    <a href="{{ route('product.inactive',$product->id) }}" class="btn btn-primary btn-sm" title="Inactive">
                                        Make Inactive <i class="fa-solid fa fa-thumbs-down"></i>
                                    </a>
                                @else
                                    <a href="{{ route('product.active',$product->id) }}" class="btn btn-primary btn-sm" title="active">
                                    Make Active <i class="fa-solid fa fa-thumbs-up"></i>
                                    </a>
                                @endif

                                <a href="{{route('products.show', ['product'=>$product->id])}}" class="btn btn-success btn-sm">SHOW</a>
                                <a href="{{route('products.edit', ['product'=>$product->id])}}" class="btn btn-warning btn-sm">EDIT</a>
                                <form style="display: inline;" class="" action="{{route('products.destroy',['product' => $product -> id])}}" method="post">
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