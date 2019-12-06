@extends('frontEnd.master')

@section('title')
Category
@endsection

@section('mainContent')
<div class="page-head">
    <div class="container">
        <h3>Men's Wear</h3>
    </div>
</div>
<!-- //banner -->
<!-- mens -->
<div class="men-wear">
    <div class="container">
        <div class="col-md-4 products-left">
            <div class="filter-price">
                <h3>Filter By Price</h3>
                <ul class="dropdown-menu6">
                    <li>                
                        <div id="slider-range"></div>							
                        <input type="text" id="amount" style="border: 0; color: #ffffff; font-weight: normal;" />
                    </li>			
                </ul>
                <!---->
                <script type='text/javascript'>//<![CDATA[ 
                    $(window).load(function () {
                        $("#slider-range").slider({
                            range: true,
                            min: 0,
                            max: 9000,
                            values: [1000, 7000],
                            slide: function (event, ui) {
                                $("#amount").val("$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ]);
                            }
                        });
                        $("#amount").val("$" + $("#slider-range").slider("values", 0) + " - $" + $("#slider-range").slider("values", 1));

                    });//]]>  

                </script>
                <script type="text/javascript" src="{{ asset('public/frontEnd/') }}/js/jquery-ui.js"></script>
                <!---->
            </div>
            <div class="css-treeview">
                <h4>Categories</h4>
                
                
                
            </div>
            
            <div class="clearfix"></div>
        </div>
        <div class="col-md-8 products-right">
            <h5>Product Compare(0)</h5>
            <div class="sort-grid">
                <div class="sorting">
                    <h6>Sort By</h6>
                    <select id="country1" onchange="change_country(this.value)" class="frm-field required sect">
                        <option value="null">Default</option>
                        <option value="null">Name(A - Z)</option> 
                        <option value="null">Name(Z - A)</option>
                        <option value="null">Price(High - Low)</option>
                        <option value="null">Price(Low - High)</option>	
                        <option value="null">Model(A - Z)</option>
                        <option value="null">Model(Z - A)</option>					
                    </select>
                    <div class="clearfix"></div>
                </div>
                <div class="sorting">
                    <h6>Showing</h6>
                    <select id="country2" onchange="change_country(this.value)" class="frm-field required sect">
                        <option value="null">7</option>
                        <option value="null">14</option> 
                        <option value="null">28</option>					
                        <option value="null">35</option>								
                    </select>
                    <div class="clearfix"></div>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="single-pro">
            @foreach($publishedCategoryProducts as $publishedCategoryProduct)
            <div class="col-md-3 product-men">
                <div class="men-pro-item simpleCart_shelfItem">
                    <div class="men-thumb-item">
                        <img src="{{ asset($publishedCategoryProduct->productImage) }}" alt="" class="pro-image-front" height="200" width="200">
                        <img src="{{ asset($publishedCategoryProduct->productImage) }}" alt="" class="pro-image-back" height="200" width="200">
                        <div class="men-cart-pro">
                            <div class="inner-men-cart-pro">
                                <a href="{{ url('/product-details/'.$publishedCategoryProduct->id) }}" class="link-product-add-cart">Quick View</a>
                            </div>
                        </div>
                        <span class="product-new-top">New</span>				
                    </div>
                    <div class="item-info-product ">
                        <h4><a href="{{ url('/product-details/'.$publishedCategoryProduct->id) }}">{{ $publishedCategoryProduct->productName }}</a></h4>
                        <div class="info-product-price">
                            <span class="item_price">BDT {{ $publishedCategoryProduct->productPrice }}</span>
                        </div>
                        <a href="{{ url('/product-details/'.$publishedCategoryProduct->id) }}" class="item_add single-item hvr-outline-out button2">Add to cart</a>
                    </div>
                </div>
            </div>
           @endforeach
            <div class="clearfix"></div>
        </div>
            
            
            
            

            <div class="clearfix"></div>
        </div>
        <div class="clearfix"></div>
        <!--
        <div class="pagination-grid text-right">
            <ul class="pagination paging">
                <li><a href="#" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
                <li class="active"><a href="#">1<span class="sr-only">(current)</span></a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#" aria-label="Next"><span aria-hidden="true">»</span></a></li>
            </ul>
        </div>
        -->
    </div>
</div>	


@endsection