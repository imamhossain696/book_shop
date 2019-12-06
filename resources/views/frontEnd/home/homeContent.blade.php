@extends('frontEnd.master')

@section('title')
Home
@endsection
@section('mainContent')
<div class="banner-grid">
    <div id="visual">
        <div class="slide-visual">
            <!-- Slide Image Area (1000 x 424) -->
            <ul class="slide-group">
                <li><img class="img-responsive" src="{{ asset('') }}" alt="Dummy Image" /></li>
                <li><img class="img-responsive" src="{{ asset('') }}" alt="Dummy Image" /></li>
                <li><img class="img-responsive" src="{{ asset('') }}" alt="Dummy Image" /></li>
            </ul>

            <!-- Slide Description Image Area (316 x 328) -->
            <div class="script-wrap">
                <ul class="script-group">
                    <li><div class="inner-script"><img class="img-responsive" src="{{ asset('') }}" alt="Dummy Image" /></div></li>
                    <li><div class="inner-script"><img class="img-responsive" src="{{ asset('') }}" alt="Dummy Image" /></div></li>
                    <li><div class="inner-script"><img class="img-responsive" src="{{ asset('') }}" alt="Dummy Image" /></div></li>
                </ul>
                <div class="slide-controller">
                    <a href="#" class="btn-prev"><img src="{{ asset('') }}" alt="Prev Slide" /></a>
                    <a href="#" class="btn-play"><img src="{{ asset('') }}" alt="Start Slide" /></a>
                    <a href="#" class="btn-pause"><img src="{{ asset('') }}" alt="Pause Slide" /></a>
                    <a href="#" class="btn-next"><img src="{{ asset('') }}" alt="Next Slide" /></a>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="clearfix"></div>
    </div>
    <script type="text/javascript" src="{{ asset('public/frontEnd/js/pignose.layerslider.js') }}"></script>
    <script type="text/javascript">
//<![CDATA[
$(window).load(function () {
    $('#visual').pignoseLayerSlider({
        play: '.btn-play',
        pause: '.btn-pause',
        next: '.btn-next',
        prev: '.btn-prev'
    });
});
//]]>
    </script>

</div>
<!-- //banner -->
<!-- content -->

<!-- //content -->

<!-- content-bottom -->


<!-- //content-bottom -->
<!-- product-nav -->

<div class="product-easy">
    <div class="container">


        <div class="sap_tabs">
            <div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
                <ul class="resp-tabs-list">
                    <li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><span>All Product</span></li> 
                    
                </ul>				  	 
                <div class="resp-tabs-container">
                    <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
                        @foreach($publishedProducts as $publishedProduct)
                        <div class="col-md-3 product-men">
                            <div class="men-pro-item simpleCart_shelfItem">
                                <div class="men-thumb-item">
                                    <img src="{{ asset($publishedProduct->productImage) }}" alt="" class="pro-image-front" height="200" width="200">
                                    <img src="{{ asset($publishedProduct->productImage) }}" alt="" class="pro-image-back" height="200" width="200">
                                    <div class="men-cart-pro">
                                        <div class="inner-men-cart-pro">
                                            <a href="{{ url('/product-details/'.$publishedProduct->id) }}" class="link-product-add-cart">Quick View</a>
                                        </div>
                                    </div>
                                    <span class="product-new-top">New</span>
                                </div>
                                <div class="item-info-product ">
                                    <h4><a href=" {{ url('/product-details/'.$publishedProduct->id) }}">{{ $publishedProduct->productName }}</a></h4>
                                    <div class="info-product-price">
                                        <span class="item_price">BDT {{ $publishedProduct->productPrice }} </span>
                                    </div>
                                    <a href="{{ url('/product-details/'.$publishedProduct->id) }}" class="item_add single-item hvr-outline-out button2">Add to cart</a>
                                </div>
                            </div>
                        </div>
                        @endforeach
                        <div class="clearfix"></div>
                    </div>
                    
                    	
                </div>	
            </div>
        </div>
    </div>
</div>

<script src="{{ asset('frontEnd/js/easyResponsiveTabs.js') }}" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $('#horizontalTab').easyResponsiveTabs({
            type: 'default', //Types: default, vertical, accordion
            width: 'auto', //auto or any width like 600px
            fit: true   // 100% fit in a container
        });
    });

</script>
@endsection


