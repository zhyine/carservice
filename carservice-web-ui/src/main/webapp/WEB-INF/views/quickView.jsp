<%--
  Created by IntelliJ IDEA.
  User: 75821
  Date: 2020/5/11
  Time: 16:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>快速查看</title>
    <jsp:include page="../includes/header.jsp"></jsp:include>
    <style type="text/css">
        body{font-family:'Rubik', sans-serif;}
    </style>
</head>
<body class="res layout-subpage">
<div id="wrapper" class="wrapper-full ">
    <!-- Main Container  -->
    <div class="main-container container">

        <div class="row">
            <!--Middle Part Start-->
            <div id="content" class="col-md-12 col-sm-12">

                <div class="product-view row quickview-w">
                    <div class="left-content-product">

                        <div class="content-product-left class-honizol col-md-5 col-sm-12 col-xs-12">
                            <div class="large-image  ">
                                <img itemprop="image" class="product-image-zoom" src="/static/image/catalog/demo/product/replacement/1.jpg" data-zoom-image="/static/image/catalog/demo/product/replacement/1.jpg" title="Chicken swinesha" alt="Chicken swinesha">
                            </div>
                            <a class="thumb-video pull-left" href="https://www.youtube.com/watch?v=HhabgvIIXik"><i class="fa fa-youtube-play"></i></a>

                            <div id="thumb-slider" class="yt-content-slider full_slider owl-drag"  data-rtl="yes" data-autoplay="no" data-autoheight="no" data-delay="4" data-speed="0.6" data-margin="10" data-items_column0="4" data-items_column1="3" data-items_column2="4"  data-items_column3="1" data-items_column4="1" data-arrows="yes" data-pagination="no" data-lazyload="yes" data-loop="no" data-hoverpause="yes">
                                <a data-index="0" class="img thumbnail " data-image="/static/image/catalog/demo/product/replacement/1.jpg" title="Chicken swinesha">
                                    <img src="/static/image/catalog/demo/product/replacement/1.jpg" title="Chicken swinesha" alt="Chicken swinesha">
                                </a>
                                <a data-index="1" class="img thumbnail " data-image="/static/image/catalog/demo/product/replacement/2.jpg" title="Chicken swinesha">
                                    <img src="/static/image/catalog/demo/product/replacement/2.jpg" title="Chicken swinesha" alt="Chicken swinesha">
                                </a>
                                <a data-index="2" class="img thumbnail " data-image="/static/image/catalog/demo/product/replacement/3.jpg" title="Chicken swinesha">
                                    <img src="/static/image/catalog/demo/product/replacement/3.jpg" title="Chicken swinesha" alt="Chicken swinesha">
                                </a>
                                <a data-index="3" class="img thumbnail " data-image="/static/image/catalog/demo/product/replacement/4.jpg" title="Chicken swinesha">
                                    <img src="/static/image/catalog/demo/product/replacement/4.jpg" title="Chicken swinesha" alt="Chicken swinesha">
                                </a>
                                <a data-index="4" class="img thumbnail " data-image="/static/image/catalog/demo/product/replacement/5.jpg" title="Chicken swinesha">
                                    <img src="/static/image/catalog/demo/product/replacement/5.jpg" title="Chicken swinesha" alt="Chicken swinesha">
                                </a>
                            </div>

                        </div>

                        <div class="content-product-right col-md-7 col-sm-12 col-xs-12">
                            <div class="title-product">
                                <h1>Chicken swinesha</h1>
                            </div>
                            <!-- Review ---->
                            <div class="box-review form-group">
                                <div class="ratings">
                                    <div class="rating-box">
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                                    </div>
                                </div>

                                <a class="reviews_button" href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;">0 reviews</a>	|
                                <a class="write_review_button" href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;">Write a review</a>
                            </div>

                            <div class="product-label form-group">
                                <div class="product_page_price price" itemprop="offerDetails" itemscope="" itemtype="http://data-vocabulary.org/Offer">
                                    <span class="price-new" itemprop="price">$114.00</span>
                                    <span class="price-old">$122.00</span>
                                </div>
                                <div class="stock"><span>Availability:</span> <span class="status-stock">In Stock</span></div>
                            </div>


                            <div id="product">
                                <h4>Available Options</h4>
                                <div class="image_option_type form-group required">
                                    <label class="control-label">Colors</label>
                                    <ul class="product-options clearfix"id="input-option231">
                                        <li class="radio">
                                            <label>
                                                <input class="image_radio" type="radio" name="option[231]" value="33">
                                                <img src="/static/image/demo/colors/blue.jpg" data-original-title="blue +$12.00" class="img-thumbnail icon icon-color">				<i class="fa fa-check"></i>
                                                <label> </label>
                                            </label>
                                        </li>
                                        <li class="radio">
                                            <label>
                                                <input class="image_radio" type="radio" name="option[231]" value="34">
                                                <img src="/static/image/demo/colors/brown.jpg" data-original-title="brown -$12.00" class="img-thumbnail icon icon-color">				<i class="fa fa-check"></i>
                                                <label> </label>
                                            </label>
                                        </li>
                                        <li class="radio">
                                            <label>
                                                <input class="image_radio" type="radio" name="option[231]" value="35"> <img src="/static/image/demo/colors/green.jpg"
                                                                                                                            data-original-title="green +$12.00" class="img-thumbnail icon icon-color">				<i class="fa fa-check"></i>
                                                <label> </label>
                                            </label>
                                        </li>
                                        <li class="selected-option">
                                        </li>
                                    </ul>
                                </div>

                                <div class="box-checkbox form-group required">
                                    <label class="control-label">Checkbox</label>
                                    <div id="input-option232">
                                        <div class="checkbox">
                                            <label for="checkbox_1"><input type="checkbox" name="option[232][]" value="36" id="checkbox_1"> Checkbox 1 (+$12.00)</label>
                                        </div>
                                        <div class="checkbox">
                                            <label for="checkbox_2"><input type="checkbox" name="option[232][]" value="36" id="checkbox_2"> Checkbox 2 (+$36.00)</label>
                                        </div>
                                        <div class="checkbox">
                                            <label for="checkbox_3"><input type="checkbox" name="option[232][]" value="36" id="checkbox_3"> Checkbox 3 (+$24.00)</label>
                                        </div>
                                        <div class="checkbox">
                                            <label for="checkbox_4"><input type="checkbox" name="option[232][]" value="36" id="checkbox_4"> Checkbox 4 (+$48.00)</label>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group box-info-product">
                                    <div class="option quantity">
                                        <div class="input-group quantity-control" unselectable="on" style="-webkit-user-select: none;">
                                            <label>Qty</label>
                                            <input class="form-control" type="text" name="quantity"
                                                   value="1">
                                            <input type="hidden" name="product_id" value="50">
                                            <span class="input-group-addon product_quantity_down">−</span>
                                            <span class="input-group-addon product_quantity_up">+</span>
                                        </div>
                                    </div>
                                    <div class="cart">
                                        <input type="button" data-toggle="tooltip" title="" value="Add to Cart" data-loading-text="Loading..." id="button-cart" class="btn btn-mega btn-lg" onclick="cart.add('42', '1');" data-original-title="Add to Cart">
                                    </div>
                                    <div class="add-to-links wish_comp">
                                        <ul class="blank list-inline">
                                            <li class="wishlist">
                                                <a class="icon" data-toggle="tooltip" title=""
                                                   onclick="wishlist.add('50');" data-original-title="Add to Wish List"><i class="fa fa-heart"></i>
                                                </a>
                                            </li>
                                            <li class="compare">
                                                <a class="icon" data-toggle="tooltip" title=""
                                                   onclick="compare.add('50');" data-original-title="Compare this Product"><i class="fa fa-exchange"></i>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>

                                </div>

                            </div>
                            <!-- end box info product -->

                        </div>

                    </div>
                </div>

                <script type="text/javascript">
                    // Cart add remove functions
                    var cart = {
                        'add': function(product_id, quantity) {
                            parent.addProductNotice('Product added to Cart', '<img src="/static/image/catalog/demo/product/270/1.jpg" alt="">', '<h3><a href="#">Apple Cinema 30"</a> added to <a href="#">shopping cart</a>!</h3>', 'success');
                        }
                    }

                    var wishlist = {
                        'add': function(product_id) {
                            parent.addProductNotice('Product added to Wishlist', '<img src="/static/image/demo/shop/product/e11.jpg" alt="">', '<h3>You must <a href="#">login</a>  to save <a href="#">Apple Cinema 30"</a> to your <a href="#">wish list</a>!</h3>', 'success');
                        }
                    }
                    var compare = {
                        'add': function(product_id) {
                            parent.addProductNotice('Product added to compare', '<img src="/static/image/demo/shop/product/e11.jpg" alt="">', '<h3>Success: You have added <a href="#">Apple Cinema 30"</a> to your <a href="#">product comparison</a>!</h3>', 'success');
                        }
                    }


                </script>


            </div>


        </div>
        <!--Middle Part End-->
    </div>
    <!-- //Main Container -->

    <style type="text/css">
        #wrapper{box-shadow:none;}
        #wrapper > *:not(.main-container){display: none;}
        #content{margin:0}
        .container{width:100%;}

        .product-info .product-view,.left-content-product,.box-info-product{margin:0;}
        .left-content-product .content-product-right .box-info-product .cart input{padding:12px 16px;}

        .left-content-product .content-product-right .box-info-product .add-to-links{ width: auto;  float: none; margin-top: 0px; clear:none; }
        .add-to-links ul li{margin:0;}

    </style></div>
<jsp:include page="../includes/footer.jsp"></jsp:include>
</body>

</html>
