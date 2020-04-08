<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Car</title>
    <jsp:include page="../includes/header.jsp"></jsp:include>
    <style type="text/css">
        body{font-family:'Rubik', sans-serif;}
    </style>
</head>
<body class="common-home res layout-1">

    <div id="wrapper" class="wrapper-fluid banners-effect-5">
        <!-- Header Container  -->
        <header id="header" class=" typeheader-1">

            <!-- Header Top -->
            <div class="header-top hidden-compact">
                <div class="container">
                    <div class="row">
                        <div class="header-top-left col-lg-3 col-md-4 col-sm-5 hidden-xs">

                        </div>
                        <div class="header-top-right col-lg-9 col-md-8 col-sm-7 col-xs-12">
                            <ul class="top-link list-inline lang-curr">

                            </ul>
                            <ul class="top-log list-inline">
                                <li><i class="fa fa-lock"></i><a href="login.html">登录</a> / </li><li><a href="register.html">注册</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <div class="header-middle hidden-compact">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3 col-md-4 col-sm-12 col-xs-12">
                            <div class="logo">
                                <a href="index.html"><img src="/static/image/catalog/logo.png" title="Your Store" alt="Your Store" /></a>
                            </div>

                        </div>

                        <div class="col-lg-9 col-md-8 col-sm-12 col-xs-12 middle-right">

                            <div class="shopping_cart">
                                <div id="cart" class="btn-shopping-cart">

                                    <a href="javascript:void(0)" data-loading-text="Loading... " class="btn-group top_cart dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
                                        <div class="shopcart">
                                        <span class="icon-c">
                                            <i class="fa fa-shopping-basket"></i>
                                        </span>
                                            <div class="shopcart-inner">
                                                <p class="text-shopping-cart">
                                                    购物车
                                                </p>

                                                <span class="total-shopping-cart cart-total-full">
                                            <span class="items_cart">02</span><span class="items_cart2"> item(s)</span><span class="items_carts">$162.00</span>
                                            </span>
                                            </div>
                                        </div>
                                    </a>

                                    <ul class="dropdown-menu pull-right shoppingcart-box" role="menu">
                                        <li>
                                            <table class="table table-striped">
                                                <tbody>
                                                <tr>
                                                    <td class="text-center" style="width:70px">
                                                        <a href="product.html">
                                                            <img src="/static/image/catalog/demo/product/80/1.jpg" style="width:70px" alt="Yutculpa ullamcon" title="Yutculpa ullamco" class="preview">
                                                        </a>
                                                    </td>
                                                    <td class="text-left"> <a class="cart_product_name" href="product.html">Yutculpa ullamco</a>
                                                    </td>
                                                    <td class="text-center">x1</td>
                                                    <td class="text-center">$80.00</td>
                                                    <td class="text-right">
                                                        <a href="product.html" class="fa fa-edit"></a>
                                                    </td>
                                                    <td class="text-right">
                                                        <a onclick="cart.remove('2');" class="fa fa-times fa-delete"></a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="text-center" style="width:70px">
                                                        <a href="product.html">
                                                            <img src="/static/image/catalog/demo/product/80/2.jpg" style="width:70px" alt="Xancetta bresao" title="Xancetta bresao" class="preview">
                                                        </a>
                                                    </td>
                                                    <td class="text-left"> <a class="cart_product_name" href="product.html">Xancetta bresao</a>
                                                    </td>
                                                    <td class="text-center">x1</td>
                                                    <td class="text-center">$60.00</td>
                                                    <td class="text-right">
                                                        <a href="product.html" class="fa fa-edit"></a>
                                                    </td>
                                                    <td class="text-right">
                                                        <a onclick="cart.remove('1');" class="fa fa-times fa-delete"></a>
                                                    </td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </li>
                                        <li>
                                            <div>
                                                <table class="table table-bordered">
                                                    <tbody>
                                                    <tr>
                                                        <td class="text-left"><strong>Sub-Total</strong>
                                                        </td>
                                                        <td class="text-right">$140.00</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-left"><strong>Eco Tax (-2.00)</strong>
                                                        </td>
                                                        <td class="text-right">$2.00</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-left"><strong>VAT (20%)</strong>
                                                        </td>
                                                        <td class="text-right">$20.00</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-left"><strong>Total</strong>
                                                        </td>
                                                        <td class="text-right">$162.00</td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                                <p class="text-right"> <a class="btn view-cart" href="cart.html"><i class="fa fa-shopping-cart"></i>View Cart</a>&nbsp;&nbsp;&nbsp; <a class="btn btn-mega checkout-cart" href="checkout.html"><i class="fa fa-share"></i>Checkout</a>
                                                </p>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>

                            <div class="wishlist hidden-md hidden-sm hidden-xs"><a href="#" id="wishlist-total" class="top-link-wishlist" title="Wish List (0) "><i class="fa fa-heart"></i></a></div>

                        </div>
                    </div>
                </div>
            </div>


            <div class="header-bottom hidden-compact">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                            <div class="menu-vertical-w">
                                <div class="responsive so-megamenu megamenu-style-dev ">
                                    <div class="so-vertical-menu ">
                                        <nav class="navbar-default">

                                            <div class="container-megamenu vertical">
                                                <div id="menuHeading">
                                                    <div class="megamenuToogle-wrapper">
                                                        <div class="megamenuToogle-pattern">
                                                            <div class="container">
                                                                <div>
                                                                    <span></span>
                                                                    <span></span>
                                                                    <span></span>
                                                                </div>
                                                                所有分类
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="navbar-header">
                                                    <button type="button" id="show-verticalmenu" data-toggle="collapse" class="navbar-toggle">
                                                        <i class="fa fa-bars"></i>
                                                        <span>  All Categories     </span>
                                                    </button>
                                                </div>
                                                <div class="vertical-wrapper" >
                                                    <span id="remove-verticalmenu" class="fa fa-times"></span>
                                                    <div class="megamenu-pattern">
                                                        <div class="container-mega">
                                                            <ul class="megamenu">
                                                                <li class="item-vertical  style1 with-sub-menu hover">
                                                                    <p class="close-menu"></p>
                                                                    <a href="#" class="clearfix">
                                                                        <span class="label"></span>
                                                                        <span>Smart Devices</span>
                                                                        <b class="fa-angle-right"></b>
                                                                    </a>
                                                                    <div class="sub-menu" data-subwidth="40" >
                                                                        <div class="content">
                                                                            <div class="row">
                                                                                <div class="col-md-6">
                                                                                    <div class="row">
                                                                                        <div class="col-md-12 static-menu">
                                                                                            <div class="menu">
                                                                                                <ul>
                                                                                                    <li><a href="#" class="main-menu">Smartphone</a>
                                                                                                        <ul>
                                                                                                            <li><a href="#">Esdipiscing</a>
                                                                                                            </li>
                                                                                                            <li><a href="#">Scanners</a>
                                                                                                            </li>
                                                                                                            <li><a href="#">Apple</a>
                                                                                                            </li>
                                                                                                            <li><a href="#">Dell</a>
                                                                                                            </li>
                                                                                                            <li><a href="#">Scanners</a>
                                                                                                            </li>
                                                                                                        </ul>
                                                                                                    </li>
                                                                                                    <li><a href="#" class="main-menu">Electronics</a>
                                                                                                        <ul>
                                                                                                            <li><a href="#">Asdipiscing</a>
                                                                                                            </li>
                                                                                                            <li><a href="#">Diam sit</a>
                                                                                                            </li>
                                                                                                            <li><a href="#">Labore et</a>
                                                                                                            </li>
                                                                                                            <li><a href="#">Monitors</a>
                                                                                                            </li>
                                                                                                        </ul>
                                                                                                    </li>
                                                                                                </ul>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-6">
                                                                                    <div class="row banner">
                                                                                        <a href="#">
                                                                                            <img src="/static/image/catalog/menu/megabanner/vbanner1.png" alt="banner1">
                                                                                        </a>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </nav>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </header>
        <!-- //Header Container  -->


        <!-- Main Container  -->
        <div class="main-container">
            <div id="content">
                <div class="content-top-w container">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 col_htca  col-style">
                            <div class="quick-links">

                            </div>
                            <div class="slider-container">
                                <div class="module sohomepage-slider ">
                                    <div class="yt-content-slider"  data-rtl="yes" data-autoplay="no" data-autoheight="no" data-delay="4" data-speed="0.6" data-margin="0" data-items_column00="1" data-items_column0="1" data-items_column1="1" data-items_column2="1"  data-items_column3="1" data-items_column4="1" data-arrows="yes" data-pagination="no" data-lazyload="yes" data-loop="no" data-hoverpause="yes">
                                        <c:forEach items="${ppt}" var="ppt">
                                            <div class="yt-content-slide">
                                                <a href="#"><img src="${ppt.pic}" alt="${ppt.title}" title="${ppt.title}" class="img-responsive"></a>
                                            </div>
                                        </c:forEach>
<%--                                        <div class="yt-content-slide">--%>
<%--                                            <a href="#"><img src="/static/image/catalog/slideshow/home1/slider-1.jpg" alt="slider1" class="img-responsive"></a>--%>
<%--                                        </div>--%>
<%--                                        <div class="yt-content-slide">--%>
<%--                                            <a href="#"><img src="/static/image/catalog/slideshow/home1/slider-2.jpg" alt="slider2" class="img-responsive"></a>--%>
<%--                                        </div>--%>
<%--                                        <div class="yt-content-slide">--%>
<%--                                            <a href="#"><img src="/static/image/catalog/slideshow/home1/slider-3.jpg" alt="slider3" class="img-responsive"></a>--%>
<%--                                        </div>--%>
                                    </div>

                                    <div class="loadeding"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="content-main-w">
                    <div class="container">
                        <!-- Extra Best seller -->
                        <div class="module extra-layout1">
                            <div class="pre_text">
                                Top sale in the week
                            </div>
                            <h3 class="modtitle"><span>Best Seller</span></h3>
                            <div class="modcontent">
                                <div id="so_extra_slider_11" class="so-extraslider button-type1">
                                    <div class="products-list yt-content-slider extraslider-inner" data-rtl="yes" data-pagination="no" data-arrows="no" data-autoplay="no" data-delay="4" data-speed="0.6" data-margin="30" data-items_column00="4" data-items_column0="4" data-items_column1="3" data-items_column2="3" data-items_column3="2" data-items_column4="1" data-lazyload="yes" data-loop="no" data-buttonpage="top">
                                        <div class="item">
                                            <div class="product-layout product-grid">
                                                <div class="product-item-container item--static">
                                                    <div class="left-block">
                                                        <div class="product-image-container second_img">
                                                            <a href="product.html" target="_self" title="Volup tatem accu">
                                                                <img src="/static/image/catalog/demo/product/270/1.jpg" class="img-1 img-responsive" alt="image1">
                                                                <img src="/static/image/catalog/demo/product/270/2.jpg" class="img-2 img-responsive" alt="image2">
                                                            </a>
                                                        </div>
                                                        <span class="label-product label-new">New </span>
                                                        <!--quickview-->
                                                        <div class="so-quickview">
                                                            <a class="iframe-link btn-button quickview quickview_handler visible-lg" href="quickview.html" title="Quick view" data-fancybox-type="iframe"><i class="fa fa-search"></i><span>Quick view</span></a>
                                                        </div>
                                                        <!--end quickview-->
                                                    </div>
                                                    <div class="right-block">
                                                        <div class="button-group cartinfo--static">

                                                            <button type="button" class="wishlist btn-button" title="Add to Wish List" onclick="wishlist.add('60');"><i class="fa fa-heart"></i></button>
                                                            <button type="button" class="addToCart" title="Add to cart" onclick="cart.add('60 ');">
                                                                <span>Add to cart </span>
                                                            </button>
                                                            <button type="button" class="compare btn-button" title="Compare this Product " onclick="compare.add('60');"><i class="fa fa-refresh"></i></button>
                                                        </div>
                                                        <h4><a href="product.html" title="Volup tatem accu" target="_self">Volup tatem accu</a></h4>
                                                        <div class="rating">    <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                            <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                            <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                            <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                            <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        </div>
                                                        <div class="price">
                                                            <span class="price">$48.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="product-layout product-grid">
                                                <div class="product-item-container item--static">
                                                    <div class="left-block">
                                                        <div class="product-image-container second_img">
                                                            <a href="product.html" target="_self" title="DPicanha porkcho">
                                                                <img src="/static/image/catalog/demo/product/270/2.jpg" class="img-1 img-responsive" alt="image1">
                                                                <img src="/static/image/catalog/demo/product/270/3.jpg" class="img-2 img-responsive" alt="image2">
                                                            </a>
                                                        </div>
                                                        <span class="label-product label-new">New</span>
                                                        <!--quickview-->
                                                        <div class="so-quickview">
                                                            <a class="iframe-link btn-button quickview quickview_handler visible-lg" href="quickview.html" title="Quick view" data-fancybox-type="iframe"><i class="fa fa-search"></i><span>Quick view</span></a>
                                                        </div>
                                                        <!--end quickview-->
                                                    </div>
                                                    <div class="right-block">
                                                        <div class="button-group cartinfo--static">
                                                            <button type="button" class="wishlist btn-button" title="Add to Wish List" onclick="wishlist.add('60');"><i class="fa fa-heart"></i></button>
                                                            <button type="button" class="addToCart" title="Add to cart" onclick="cart.add('60 ');">
                                                                <span>Add to cart </span>
                                                            </button>
                                                            <button type="button" class="compare btn-button" title="Compare this Product " onclick="compare.add('60');"><i class="fa fa-refresh"></i></button>
                                                        </div>
                                                        <h4><a href="product.html" title="Picanha porkcho" target="_self">Picanha porkcho</a></h4>
                                                        <div class="rating">    <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                            <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                            <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                            <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                            <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                        </div>
                                                        <div class="price">
                                                            <span class="price">$89.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="product-layout product-grid">
                                                <div class="product-item-container item--static">
                                                    <div class="left-block">
                                                        <div class="product-image-container second_img">
                                                            <a href="product.html" target="_self" title="Stickrum bresao">
                                                                <img src="/static/image/catalog/demo/product/270/3.jpg" class="img-1 img-responsive" alt="image1">
                                                                <img src="/static/image/catalog/demo/product/270/4.jpg" class="img-2 img-responsive" alt="image2">
                                                            </a>
                                                        </div>
                                                        <span class="label-product label-sale">-11%</span>
                                                        <!--quickview-->
                                                        <div class="so-quickview">
                                                            <a class="iframe-link btn-button quickview quickview_handler visible-lg" href="quickview.html" title="Quick view" data-fancybox-type="iframe"><i class="fa fa-search"></i><span>Quick view</span></a>
                                                        </div>
                                                        <!--end quickview-->
                                                    </div>
                                                    <div class="right-block">
                                                        <div class="button-group cartinfo--static">

                                                            <button type="button" class="wishlist btn-button" title="Add to Wish List" onclick="wishlist.add('60');"><i class="fa fa-heart"></i></button>
                                                            <button type="button" class="addToCart" title="Add to cart" onclick="cart.add('60 ');">
                                                                <span>Add to cart </span>
                                                            </button>
                                                            <button type="button" class="compare btn-button" title="Compare this Product " onclick="compare.add('60');"><i class="fa fa-refresh"></i></button>
                                                        </div>
                                                        <h4><a href="product.html" title="Stickrum bresao" target="_self">Stickrum bresao</a></h4>
                                                        <div class="rating">    <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                            <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                            <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                            <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                            <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        </div>
                                                        <div class="price">
                                                            <span class="price-new">$85.00</span>
                                                            <span class="price-old">$96.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="product-layout product-grid">
                                                <div class="product-item-container item--static">
                                                    <div class="left-block">
                                                        <div class="product-image-container second_img">
                                                            <a href="product.html" target="_self" title="Shoulder kevinis">
                                                                <img src="/static/image/catalog/demo/product/270/4.jpg" class="img-1 img-responsive" alt="image1">
                                                                <img src="/static/image/catalog/demo/product/270/5.jpg" class="img-2 img-responsive" alt="image2">
                                                            </a>
                                                        </div>

                                                        <!--quickview-->
                                                        <div class="so-quickview">
                                                            <a class="iframe-link btn-button quickview quickview_handler visible-lg" href="quickview.html" title="Quick view" data-fancybox-type="iframe"><i class="fa fa-search"></i><span>Quick view</span></a>
                                                        </div>
                                                        <!--end quickview-->
                                                    </div>
                                                    <div class="right-block">
                                                        <div class="button-group cartinfo--static">

                                                            <button type="button" class="wishlist btn-button" title="Add to Wish List" onclick="wishlist.add('60');"><i class="fa fa-heart"></i></button>
                                                            <button type="button" class="addToCart" title="Add to cart" onclick="cart.add('60 ');">
                                                                <span>Add to cart </span>
                                                            </button>
                                                            <button type="button" class="compare btn-button" title="Compare this Product " onclick="compare.add('60');"><i class="fa fa-refresh"></i></button>
                                                        </div>
                                                        <h4><a href="product.html" title="Shoulder kevinis" target="_self">Shoulder kevinis</a></h4>
                                                        <div class="rating">    <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                            <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                            <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                            <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                            <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                        </div>
                                                        <div class="price">
                                                            <span class="price">$60.00</span>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="product-layout product-grid">
                                                <div class="product-item-container item--static">
                                                    <div class="left-block">
                                                        <div class="product-image-container second_img">
                                                            <a href="product.html" target="_self" title="Remporum stick">
                                                                <img src="/static/image/catalog/demo/product/270/5.jpg" class="img-1 img-responsive" alt="image1">
                                                                <img src="/static/image/catalog/demo/product/270/6.jpg" class="img-2 img-responsive" alt="image2">
                                                            </a>
                                                        </div>
                                                        <span class="label-product label-new">New</span>
                                                        <!--quickview-->
                                                        <div class="so-quickview">
                                                            <a class="iframe-link btn-button quickview quickview_handler visible-lg" href="quickview.html" title="Quick view" data-fancybox-type="iframe"><i class="fa fa-search"></i><span>Quick view</span></a>
                                                        </div>
                                                        <!--end quickview-->
                                                    </div>
                                                    <div class="right-block">
                                                        <div class="button-group cartinfo--static">

                                                            <button type="button" class="wishlist btn-button" title="Add to Wish List" onclick="wishlist.add('60');"><i class="fa fa-heart"></i></button>
                                                            <button type="button" class="addToCart" title="Add to cart" onclick="cart.add('60 ');">
                                                                <span>Add to cart </span>
                                                            </button>
                                                            <button type="button" class="compare btn-button" title="Compare this Product " onclick="compare.add('60');"><i class="fa fa-refresh"></i></button>
                                                        </div>
                                                        <h4><a href="product.html" title="Remporum stick" target="_self">Remporum stick</a></h4>
                                                        <div class="rating">    <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                            <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                            <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                            <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                            <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        </div>
                                                        <div class="price">
                                                            <span class="price">$65.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="product-layout product-grid">
                                                <div class="product-item-container item--static">
                                                    <div class="left-block">
                                                        <div class="product-image-container second_img">
                                                            <a href="product.html" target="_self" title="Luis rute arure">
                                                                <img src="/static/image/catalog/demo/product/270/7.jpg" class="img-1 img-responsive" alt="image1">
                                                                <img src="/static/image/catalog/demo/product/270/8.jpg" class="img-2 img-responsive" alt="image2">
                                                            </a>
                                                        </div>
                                                        <span class="label-product label-sale">-15%</span>
                                                        <!--quickview-->
                                                        <div class="so-quickview">
                                                            <a class="iframe-link btn-button quickview quickview_handler visible-lg" href="quickview.html" title="Quick view" data-fancybox-type="iframe"><i class="fa fa-search"></i><span>Quick view</span></a>
                                                        </div>
                                                        <!--end quickview-->
                                                    </div>
                                                    <div class="right-block">
                                                        <div class="button-group cartinfo--static">

                                                            <button type="button" class="wishlist btn-button" title="Add to Wish List" onclick="wishlist.add('60');"><i class="fa fa-heart"></i></button>
                                                            <button type="button" class="addToCart" title="Add to cart" onclick="cart.add('60 ');">
                                                                <span>Add to cart </span>
                                                            </button>
                                                            <button type="button" class="compare btn-button" title="Compare this Product " onclick="compare.add('60');"><i class="fa fa-refresh"></i></button>
                                                        </div>
                                                        <h4><a href="product.html" title="Luis rute arure" target="_self">Luis rute arure</a></h4>
                                                        <div class="rating">    <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                            <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                            <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                            <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                            <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                        </div>
                                                        <div class="price">
                                                            <span class="price-new">$50.00</span>
                                                            <span class="price-old">$59.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="product-layout product-grid">
                                                <div class="product-item-container item--static">
                                                    <div class="left-block">
                                                        <div class="product-image-container second_img">
                                                            <a href="product.html" target="_self" title="Sunt in culpa">
                                                                <img src="/static/image/catalog/demo/product/270/6.jpg" class="img-1 img-responsive" alt="image1">
                                                                <img src="/static/image/catalog/demo/product/270/7.jpg" class="img-2 img-responsive" alt="image2">
                                                            </a>
                                                        </div>
                                                        <!--quickview-->
                                                        <div class="so-quickview">
                                                            <a class="iframe-link btn-button quickview quickview_handler visible-lg" href="quickview.html" title="Quick view" data-fancybox-type="iframe"><i class="fa fa-search"></i><span>Quick view</span></a>
                                                        </div>
                                                        <!--end quickview-->
                                                    </div>
                                                    <div class="right-block">
                                                        <div class="button-group cartinfo--static">

                                                            <button type="button" class="wishlist btn-button" title="Add to Wish List" onclick="wishlist.add('60');"><i class="fa fa-heart"></i></button>
                                                            <button type="button" class="addToCart" title="Add to cart" onclick="cart.add('60 ');">
                                                                <span>Add to cart </span>
                                                            </button>
                                                            <button type="button" class="compare btn-button" title="Compare this Product " onclick="compare.add('60');"><i class="fa fa-refresh"></i></button>
                                                        </div>
                                                        <h4><a href="product.html" title="Sunt in culpa" target="_self">Sunt in culpa</a></h4>
                                                        <div class="rating">    <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                            <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                            <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                            <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                            <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        </div>
                                                        <div class="price">
                                                            <span class="price">$40.00</span>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                            <div class="product-layout product-grid">
                                                <div class="product-item-container item--static">
                                                    <div class="left-block">
                                                        <div class="product-image-container second_img">
                                                            <a href="product.html" target="_self" title="Duis aute irure ">
                                                                <img src="/static/image/catalog/demo/product/270/8.jpg" class="img-1 img-responsive" alt="image1">
                                                                <img src="/static/image/catalog/demo/product/270/9.jpg" class="img-2 img-responsive" alt="image2">
                                                            </a>
                                                        </div>

                                                        <!--quickview-->
                                                        <div class="so-quickview">
                                                            <a class="iframe-link btn-button quickview quickview_handler visible-lg" href="quickview.html" title="Quick view" data-fancybox-type="iframe"><i class="fa fa-search"></i><span>Quick view</span></a>
                                                        </div>
                                                        <!--end quickview-->
                                                    </div>
                                                    <div class="right-block">
                                                        <div class="button-group cartinfo--static">

                                                            <button type="button" class="wishlist btn-button" title="Add to Wish List" onclick="wishlist.add('60');"><i class="fa fa-heart"></i></button>
                                                            <button type="button" class="addToCart" title="Add to cart" onclick="cart.add('60 ');">
                                                                <span>Add to cart </span>
                                                            </button>
                                                            <button type="button" class="compare btn-button" title="Compare this Product " onclick="compare.add('60');"><i class="fa fa-refresh"></i></button>
                                                        </div>
                                                        <h4><a href="product.html" title="Volup tatem accu" target="_self">Volup tatem accu</a></h4>
                                                        <div class="rating">    <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                            <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                            <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                            <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                            <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                        </div>
                                                        <div class="price">
                                                            <span class="price">$60.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- end Extra best seller -->
                    </div>

                    <!-- Deals -->
                    <div class="row-image deals-w">
                        <div class="container row row-deals">
                            <div class="col-lg-9 col-md-8 col-sm-12 col-xs-12">
                                <div class="module deals-layout1">
                                    <h3 class="modtitle2"><span>Deal of the day</span></h3>
                                    <div class="modcontent">
                                        <div id="so_deal_11" class="so-deal">
                                            <div class="products-list yt-content-slider extraslider-inner" data-rtl="yes" data-pagination="no" data-arrows="no" data-autoplay="no" data-delay="4" data-speed="0.6" data-margin="30" data-items_column00="1" data-items_column0="1" data-items_column1="1" data-items_column2="1" data-items_column3="1" data-items_column4="1" data-lazyload="yes" data-loop="no" data-buttonpage="top">
                                                <div class="item product-layout">
                                                    <div class="product-thumb transition product-item-container">
                                                        <div class="col-lg-6 col-md-5 col-sm-6 col-xs-12 col-left">
                                                            <div class="left-block">
                                                                <div class="product-image-container second_img">
                                                                    <a href="product.html" target="_self" title="Sunt in culpa">
                                                                        <img src="/static/image/catalog/demo/product/400/1.jpg" class="img-1 img-responsive" alt="image1">
                                                                        <img src="/static/image/catalog/demo/product/400/2.jpg" class="img-2 img-responsive" alt="image2">
                                                                    </a>
                                                                </div>
                                                                <div class="so-quickview">
                                                                    <a class="iframe-link btn-button quickview quickview_handler visible-lg" href="quickview.html" title="Quick view" data-fancybox-type="iframe"><i class="fa fa-search"></i><span>Quick view</span></a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6 col-md-7 col-sm-6 col-xs-12 col-right">
                                                            <div class="right-block">
                                                                <h4><a href="product.html" title="Sunt in culpa" target="_self">Sunt in culpa back wheel</a></h4>
                                                                <div class="rating">    <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                                    <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                                    <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                                    <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                                    <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                                </div>
                                                                <div class="price">
                                                                    <span class="price-new">$50.00</span>
                                                                    <span class="price-old">$59.00</span>
                                                                </div>
                                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, ..</p>
                                                                <div class="item-time">
                                                                    <div class="item-timer">
                                                                        <div class="defaultCountdown-30"></div>
                                                                    </div>
                                                                </div>
                                                                <div class="button-group">
                                                                    <button type="button" class="addToCart" title="Add to cart" onclick="cart.add('60 ');">
                                                                        <span>Add to cart </span>
                                                                    </button>
                                                                    <button type="button" class="wishlist btn-button" title="Add to Wish List" onclick="wishlist.add('60');"><i class="fa fa-heart"></i></button>
                                                                    <button type="button" class="compare btn-button" title="Compare this Product " onclick="compare.add('60');"><i class="fa fa-refresh"></i></button>
                                                                </div>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12 col-style hidden-xs hidden-sm">
                                <div class="banners banners1">
                                    <div>
                                        <a href="#"><img src="/static/image/catalog/banners/bn1.jpg" alt="banner"></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end Deals -->

                    <!-- So Categories -->
                    <div class="row-cates">
                        <div id="so_categories_11" class="so-categories module theme2 cates-layout1 container preset01-3 preset02-2 preset03-2 preset04-2 preset05-1">
                            <div class="pre_text">
                                Top featured collections
                            </div>
                            <h3 class="modtitle"><span>Shop by categories</span></h3>
                            <div class="modcontent">
                                <div class="cat-wrap theme2">
                                    <div class="content-box">
                                        <div class="inner">
                                            <div class="parent-cat">
                                                <div class="image-cat">
                                                    <a href="#"><img src="/static/image/catalog/demo/category/cate1.jpg" alt="image" /></a>
                                                </div>
                                            </div>
                                            <div class="cat-title"><a href="#">Wheels & Tires</a></div>
                                            <div class="child-cat">
                                                <div class="child-cat-title"><a href="#">Tires</a></div>
                                                <div class="child-cat-title"><a href="#">Tires Chains</a></div>
                                                <div class="child-cat-title"><a href="#">Tires Accessories</a></div>
                                                <div class="child-cat-title"><a href="#">Wheels</a></div>
                                                <div class="child-cat-title"><a href="#">Wheels Accessories</a></div>
                                                <a class="viewmore" href="#">View More</a>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="content-box">
                                        <div class="inner">
                                            <div class="parent-cat">
                                                <div class="image-cat">
                                                    <a href="#"><img src="/static/image/catalog/demo/category/cate2.jpg" alt="image" /></a>
                                                </div>
                                            </div>
                                            <div class="cat-title"><a href="#">Smart devices</a></div>
                                            <div class="child-cat">
                                                <div class="child-cat-title"><a href="#">Bluetooth Devices </a></div>
                                                <div class="child-cat-title"><a href="#">Dash Cam</a></div>
                                                <div class="child-cat-title"><a href="#">Screen TV</a></div>
                                                <div class="child-cat-title"><a href="#">Smartwatch</a></div>
                                                <div class="child-cat-title"><a href="#">USB Connect</a></div>
                                                <a class="viewmore" href="#">View More</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="content-box">
                                        <div class="inner">
                                            <div class="parent-cat">
                                                <div class="image-cat">
                                                    <a href="#"><img src="/static/image/catalog/demo/category/cate3.jpg" alt="image" /></a>
                                                </div>
                                            </div>
                                            <div class="cat-title"><a href="#">Oil Fluids</a></div>
                                            <div class="child-cat">
                                                <div class="child-cat-title"><a href="#">Esdipiscing</a></div>
                                                <div class="child-cat-title"><a href="#">Reprehenderit</a></div>
                                                <div class="child-cat-title"><a href="#">Duis aute</a></div>
                                                <div class="child-cat-title"><a href="#">Deserunt mollit</a></div>
                                                <div class="child-cat-title"><a href="#">Laudantium</a></div>
                                                <a class="viewmore" href="#">View More</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="content-box">
                                        <div class="inner">
                                            <div class="parent-cat">
                                                <div class="image-cat">
                                                    <a href="#"><img src="/static/image/catalog/demo/category/cate4.jpg" alt="image" /></a>
                                                </div>
                                            </div>
                                            <div class="cat-title"><a href="#">Lighting</a></div>
                                            <div class="child-cat">
                                                <div class="child-cat-title"><a href="#">LED Tail Lights</a></div>
                                                <div class="child-cat-title"><a href="#">Headlights</a></div>
                                                <div class="child-cat-title"><a href="#">Aspering</a></div>
                                                <div class="child-cat-title"><a href="#">Interior Light</a></div>
                                                <div class="child-cat-title"><a href="#">Consectetur</a></div>
                                                <a class="viewmore" href="#">View More</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="content-box">
                                        <div class="inner">
                                            <div class="parent-cat">
                                                <div class="image-cat">
                                                    <a href="#"><img src="/static/image/catalog/demo/category/cate5.jpg" alt="image" /></a>
                                                </div>
                                            </div>
                                            <div class="cat-title"><a href="#">Replacement Parts</a></div>
                                            <div class="child-cat">
                                                <div class="child-cat-title"><a href="#">Lighting & Electical</a></div>
                                                <div class="child-cat-title"><a href="#">Brake Parts</a></div>
                                                <div class="child-cat-title"><a href="#">Shock & Suspension</a></div>
                                                <div class="child-cat-title"><a href="#">Outerwear</a></div>
                                                <div class="child-cat-title"><a href="#">Exhaust & Emission</a></div>
                                                <a class="viewmore" href="#">View More</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="content-box">
                                        <div class="inner">
                                            <div class="parent-cat">
                                                <div class="image-cat">
                                                    <a href="#"><img src="/static/image/catalog/demo/category/cate6.jpg" alt="image" /></a>
                                                </div>
                                            </div>
                                            <div class="cat-title"><a href="#">Tool & equipments</a></div>
                                            <div class="child-cat">
                                                <div class="child-cat-title"><a href="#">Tool Boxes</a></div>
                                                <div class="child-cat-title"><a href="#">Tool Sets</a></div>
                                                <div class="child-cat-title"><a href="#">Impact Wrenches</a></div>
                                                <div class="child-cat-title"><a href="#">Tire Air Compressors </a></div>
                                                <div class="child-cat-title"><a href="#">Hand Tools</a></div>
                                                <a class="viewmore" href="#">View More</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end So Categories -->

                    <div class="container">
                        <div class="slider-brands module">
                            <div class="pre_text">Top quality partners</div>
                            <h3 class="modtitle"><span>Shop by Brands</span></h3>

                            <div class="yt-content-slider contentslider" data-rtl="no" data-loop="yes" data-autoplay="no" data-autoheight="no" data-autowidth="no" data-delay="4" data-speed="0.6" data-margin="0" data-items_column00="6" data-items_column0="6" data-items_column1="5" data-items_column2="3" data-items_column3="2" data-items_column4="1" data-arrows="yes" data-pagination="no" data-lazyload="yes" data-hoverpause="yes">
                                <div class="item"><a href="#"><img src="/static/image/catalog/brands/b1.jpg" alt="brand"></a></div>
                                <div class="item"><a href="#"><img src="/static/image/catalog/brands/b2.jpg" alt="brand"></a></div>
                                <div class="item"><a href="#"><img src="/static/image/catalog/brands/b3.jpg" alt="brand"></a></div>
                                <div class="item"><a href="#"><img src="/static/image/catalog/brands/b4.jpg" alt="brand"></a></div>
                                <div class="item"><a href="#"><img src="/static/image/catalog/brands/b5.jpg" alt="brand"></a></div>
                                <div class="item"><a href="#"><img src="/static/image/catalog/brands/b6.jpg" alt="brand"></a></div>
                                <div class="item"><a href="#"><img src="/static/image/catalog/brands/b3.jpg" alt="brand"></a></div>
                            </div>

                        </div>

                        <div class="module so-latest-blog blog-home">
                            <div class="pre_text">Our recent posts</div>
                            <h3 class="modtitle"><span>Latest blogs</span></h3>
                            <div class="modcontent clearfix">
                                <div class="so-blog-external buttom-type1 button-type1">
                                    <div class="blog-external yt-content-slider contentslider" data-rtl="no" data-loop="no" data-autoplay="no" data-autoheight="no" data-autowidth="no" data-delay="4" data-speed="0.6" data-margin="30" data-items_column00="3" data-items_column0="3" data-items_column1="2" data-items_column2="2" data-items_column3="1" data-items_column4="1" data-arrows="no" data-pagination="no" data-lazyload="yes" data-hoverpause="yes">
                                        <div class="media">
                                            <div class="item head-button">
                                                <div class="media-left so-block">
                                                    <a class="imag" href="#"><img src="/static/image/catalog/blog/1.jpg" alt="image" /></a>
                                                </div>
                                                <div class="media-body">
                                                    <div class="media-content so-block">
                                                        <div class="infos"><span class="media-date-added"> March 6th, 2019</span>By <span class="media-author">Wash upito</span></div>
                                                        <h4 class="media-heading font-title head-item">
                                                            <a href="#" title="Biten demons lector in henderit in vulp no sea takimata sanctus est" target="_self">Biten demons lector in henderit in ..</a>
                                                        </h4>
                                                        <div class="readmore font-title">
                                                            <a href="#" target="_self"><span>Read more</span> </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="media">
                                            <div class="item head-button">
                                                <div class="media-left so-block">
                                                    <a class="imag" href="#"><img src="/static/image/catalog/blog/2.jpg" alt="image" /></a>
                                                </div>
                                                <div class="media-body">
                                                    <div class="media-content so-block">
                                                        <div class="infos"><span class="media-date-added"> March 6th, 2019</span>By <span class="media-author">Wash upito</span></div>
                                                        <h4 class="media-heading font-title head-item">
                                                            <a href="#" title="Commodo laoreet semper tincidun  sit vel illum dolore eu feugiat" target="_self">Commodo laoreet semper tincidun sit ..</a>
                                                        </h4>
                                                        <div class="readmore font-title">
                                                            <a href="#" target="_self"><span>Read more</span> </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="media">
                                            <div class="item head-button">
                                                <div class="media-left so-block">
                                                    <a class="imag" href="#"><img src="/static/image/catalog/blog/3.jpg" alt="image" /></a>
                                                </div>
                                                <div class="media-body">
                                                    <div class="media-content so-block">
                                                        <div class="infos"><span class="media-date-added"> March 6th, 2019</span>By <span class="media-author">Wash upito</span></div>
                                                        <h4 class="media-heading font-title head-item">
                                                            <a href="#" title="Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse" target="_self">Duis autem vel eum iriure dolor ..</a>
                                                        </h4>
                                                        <div class="readmore font-title">
                                                            <a href="#" target="_self"><span>Read more</span> </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </div>
        <!-- //Main Container -->

    </div>
<jsp:include page="../includes/footer.jsp"></jsp:include>
</body>
</html>

