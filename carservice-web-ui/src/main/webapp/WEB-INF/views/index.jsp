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
                                <c:if test="${carUser != null}">
                                    <li>${carUser.username}欢迎回来&nbsp;&nbsp;<a href="/logout" style="color: red">注销！</a></li>
                                </c:if>
                                <c:if test="${carUser == null}">
                                    <li><i class="fa fa-lock"></i><a href="/login">登录</a> / </li><li><a href="/register">注册</a></li>
                                </c:if>
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
                                <a href="/index"><img src="/static/image/catalog/logo.png" title="Your Store" alt="Your Store" /></a>
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
<%--                                            <span class="items_cart">02</span><span class="items_cart2"> item(s)</span><span class="items_carts">$162.00</span>--%>

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
                                                            <img src="/static/image/catalog/demo/product/80/2.jpg" style="width:70px" alt="Xancetta bresao" title="Xancetta bresao" class="preview">
                                                        </a>
                                                    </td>
                                                    <td class="text-left"> <a class="cart_product_name" href="product.html">Xancetta bresao</a></td>
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
                                                        <td class="text-left"><strong>商品</strong>
                                                        </td>
                                                        <td class="text-right">￥140.00</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-left"><strong>包装</strong>
                                                        </td>
                                                        <td class="text-right">￥5.00</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-left"><strong>运费</strong>
                                                        </td>
                                                        <td class="text-right">￥20.00</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-left"><strong>Total</strong>
                                                        </td>
                                                        <td class="text-right">$162.00</td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                                <p class="text-right"> <a class="btn view-cart" href="/cart"><i class="fa fa-shopping-cart"></i>购物车</a>&nbsp;&nbsp;&nbsp; <a class="btn btn-mega checkout-cart" href="/checkout"><i class="fa fa-share"></i>付款</a>
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
                                本周热销榜
                            </div>
                            <h3 class="modtitle"><span>热销产品</span></h3>
                            <div class="modcontent">
                                <div id="so_extra_slider_11" class="so-extraslider button-type1">
                                    <div class="products-list yt-content-slider extraslider-inner" data-rtl="yes" data-pagination="no" data-arrows="no" data-autoplay="no" data-delay="4" data-speed="0.6" data-margin="30" data-items_column00="4" data-items_column0="4" data-items_column1="3" data-items_column2="3" data-items_column3="2" data-items_column4="1" data-lazyload="yes" data-loop="no" data-buttonpage="top">
                                        <div class="item">
                                            <c:forEach items="${top1}" var="top1">
                                                <div class="product-layout product-grid">
                                                    <div class="product-item-container item--static">
                                                        <div class="left-block">
                                                            <div class="product-image-container second_img">
                                                                <a href="product.html" target="_self" title="Volup tatem accu">
                                                                    <img src="${top1.pic}" class="img-1 img-responsive" alt="image1">
                                                                    <img src="${top1.pic2}" class="img-2 img-responsive" alt="image2">
                                                                </a>
                                                            </div>
                                                            <span class="label-product label-new">新品 </span>
                                                            <!--quickview-->
                                                            <div class="so-quickview">
                                                                <a class="iframe-link btn-button quickview quickview_handler visible-lg" href="/quickView" title="Quick view" data-fancybox-type="iframe"><i class="fa fa-search"></i><span>Quick view</span></a>
                                                            </div>
                                                            <!--end quickview-->
                                                        </div>

                                                        <div class="right-block">
                                                            <div class="button-group cartinfo--static">

                                                                <button type="button" class="wishlist btn-button" title="Add to Wish List" onclick="wishlist.add('60');"><i class="fa fa-heart"></i></button>
                                                                <button type="button" class="addToCart" title="Add to cart" onclick="cart.add('60 ');">
                                                                    <span>加入购物车 </span>
                                                                </button>
                                                                <button type="button" class="compare btn-button" title="Compare this Product " onclick="compare.add('60');"><i class="fa fa-refresh"></i></button>
                                                            </div>
                                                            <h4><a href="product.html" title="Volup tatem accu" target="_self">车内挂件</a></h4>
                                                            <div class="rating">    <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                            </div>
                                                            <div class="price">
                                                                <span class="price">￥48.00</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:forEach>
                                        </div>
                                        <div class="item">
                                            <c:forEach items="${top2}" var="top2">
                                                <div class="product-layout product-grid">
                                                    <div class="product-item-container item--static">
                                                        <div class="left-block">
                                                            <div class="product-image-container second_img">
                                                                <a href="product.html" target="_self" title="Volup tatem accu">
                                                                    <img src="${top2.pic}" class="img-1 img-responsive" alt="image1">
                                                                    <img src="${top2.pic2}" class="img-2 img-responsive" alt="image2">
                                                                </a>
                                                            </div>
                                                            <span class="label-product label-new">新品 </span>
                                                            <!--quickview-->
                                                            <div class="so-quickview">
                                                                <a class="iframe-link btn-button quickview quickview_handler visible-lg" href="/quickView" title="Quick view" data-fancybox-type="iframe"><i class="fa fa-search"></i><span>Quick view</span></a>
                                                            </div>
                                                            <!--end quickview-->
                                                        </div>

                                                        <div class="right-block">
                                                            <div class="button-group cartinfo--static">

                                                                <button type="button" class="wishlist btn-button" title="Add to Wish List" onclick="wishlist.add('60');"><i class="fa fa-heart"></i></button>
                                                                <button type="button" class="addToCart" title="Add to cart" onclick="cart.add('60 ');">
                                                                    <span>加入购物车 </span>
                                                                </button>
                                                                <button type="button" class="compare btn-button" title="Compare this Product " onclick="compare.add('60');"><i class="fa fa-refresh"></i></button>
                                                            </div>
                                                            <h4><a href="product.html" title="Volup tatem accu" target="_self">改装装备</a></h4>
                                                            <div class="rating">    <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                            </div>
                                                            <div class="price">
                                                                <span class="price">￥687.00</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:forEach>
                                        </div>
                                        <div class="item">
                                            <c:forEach items="${top3}" var="top3">
                                                <div class="product-layout product-grid">
                                                    <div class="product-item-container item--static">
                                                        <div class="left-block">
                                                            <div class="product-image-container second_img">
                                                                <a href="product.html" target="_self" title="Volup tatem accu">
                                                                    <img src="${top3.pic}" class="img-1 img-responsive" alt="image1">
                                                                    <img src="${top3.pic2}" class="img-2 img-responsive" alt="image2">
                                                                </a>
                                                            </div>
                                                            <span class="label-product label-new">新品 </span>
                                                            <!--quickview-->
                                                            <div class="so-quickview">
                                                                <a class="iframe-link btn-button quickview quickview_handler visible-lg" href="/quickView" title="Quick view" data-fancybox-type="iframe"><i class="fa fa-search"></i><span>Quick view</span></a>
                                                            </div>
                                                            <!--end quickview-->
                                                        </div>

                                                        <div class="right-block">
                                                            <div class="button-group cartinfo--static">

                                                                <button type="button" class="wishlist btn-button" title="Add to Wish List" onclick="wishlist.add('60');"><i class="fa fa-heart"></i></button>
                                                                <button type="button" class="addToCart" title="Add to cart" onclick="cart.add('60 ');">
                                                                    <span>加入购物车 </span>
                                                                </button>
                                                                <button type="button" class="compare btn-button" title="Compare this Product " onclick="compare.add('60');"><i class="fa fa-refresh"></i></button>
                                                            </div>
                                                            <h4><a href="product.html" title="Volup tatem accu" target="_self">显示器</a></h4>
                                                            <div class="rating">    <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                            </div>
                                                            <div class="price">
                                                                <span class="price">￥2000.00</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:forEach>
                                        </div>
                                        <div class="item">
                                            <c:forEach items="${top4}" var="top4">
                                                <div class="product-layout product-grid">
                                                    <div class="product-item-container item--static">
                                                        <div class="left-block">
                                                            <div class="product-image-container second_img">
                                                                <a href="product.html" target="_self" title="Volup tatem accu">
                                                                    <img src="${top4.pic}" class="img-1 img-responsive" alt="image1">
                                                                    <img src="${top4.pic2}" class="img-2 img-responsive" alt="image2">
                                                                </a>
                                                            </div>
                                                            <span class="label-product label-new">新品 </span>
                                                            <!--quickview-->
                                                            <div class="so-quickview">
                                                                <a class="iframe-link btn-button quickview quickview_handler visible-lg" href="/quickView" title="Quick view" data-fancybox-type="iframe"><i class="fa fa-search"></i><span>Quick view</span></a>
                                                            </div>
                                                            <!--end quickview-->
                                                        </div>

                                                        <div class="right-block">
                                                            <div class="button-group cartinfo--static">

                                                                <button type="button" class="wishlist btn-button" title="Add to Wish List" onclick="wishlist.add('60');"><i class="fa fa-heart"></i></button>
                                                                <button type="button" class="addToCart" title="Add to cart" onclick="cart.add('60 ');">
                                                                    <span>加入购物车 </span>
                                                                </button>
                                                                <button type="button" class="compare btn-button" title="Compare this Product " onclick="compare.add('60');"><i class="fa fa-refresh"></i></button>
                                                            </div>
                                                            <h4><a href="product.html" title="Volup tatem accu" target="_self">其他</a></h4>
                                                            <div class="rating">    <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                            </div>
                                                            <div class="price">
                                                                <span class="price">￥1148.00</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:forEach>
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
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="module deals-layout1">
                                    <h3 class="modtitle2"><span>拍卖专区</span></h3>
                                    <c:forEach items="${goods}" var="goods">
                                        <div class="modcontent">
                                            <div id="so_deal_11" class="so-deal">
                                                <div class="products-list yt-content-slider extraslider-inner" data-rtl="yes" data-pagination="no" data-arrows="no" data-autoplay="no" data-delay="4" data-speed="0.6" data-margin="30" data-items_column00="1" data-items_column0="1" data-items_column1="1" data-items_column2="1" data-items_column3="1" data-items_column4="1" data-lazyload="yes" data-loop="no" data-buttonpage="top">
                                                    <div class="item product-layout">
                                                        <div class="product-thumb transition product-item-container">
                                                            <div class="col-lg-6 col-md-5 col-sm-6 col-xs-12 col-left">
                                                                <div class="left-block">
                                                                    <div class="product-image-container second_img">
                                                                        <a href="product.html" target="_self" title="Sunt in culpa">
                                                                            <img src="${goods.pic}" class="img-1 img-responsive" alt="image1">
                                                                        </a>
                                                                    </div>
                                                                    <div class="so-quickview">
                                                                        <a class="iframe-link btn-button quickview quickview_handler visible-lg" href="quickview.html" title="Quick view" data-fancybox-type="iframe"><i class="fa fa-search"></i><span>Quick view</span></a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6 col-md-7 col-sm-6 col-xs-12 col-right">
                                                                <div class="right-block">
                                                                    <h4><a href="product.html" title="Sunt in culpa" target="_self">${goods.name}</a></h4>
                                                                    <div class="rating">    <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                                    </div>
                                                                    <div class="price">
                                                                        <span class="price-new">￥${goods.prices}</span>
                                                                        <span class="price-old">￥590.00</span>
                                                                    </div>
                                                                    <p>${goods.desc}</p>
                                                                    <div class="item-time">
                                                                        <div class="item-timer">
                                                                            <div class="defaultCountdown-30"></div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="button-group">
                                                                        <button type="button" class="addToCart" title="Add to cart" onclick="cart.add('60 ');">
                                                                            <span>加入购物车 </span>
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
                                    </c:forEach>
                                </div>
                            </div>
<%--                            <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12 col-style hidden-xs hidden-sm">--%>
<%--                                <div class="banners banners1">--%>
<%--                                    <div>--%>
<%--                                        <a href="#"><img src="/static/image/catalog/banners/bn1.jpg" alt="banner"></a>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
                        </div>
                    </div>
                    <!-- end Deals -->

                    <div class="container">
                        <div class="slider-brands module">
                            <div class="pre_text">顶级合作伙伴</div>
                            <h3 class="modtitle"><span>品牌专区</span></h3>

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
                            <div class="pre_text">我们最近帖子</div>
                            <h3 class="modtitle"><span>最新消息</span></h3>
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
                                                        <div class="infos"><span class="media-date-added"> 2020/5/6</span>By <span class="media-author">ammi3</span></div>
                                                        <h4 class="media-heading font-title head-item">
                                                            <a href="#" title="贷款优惠多多" target="_self">贷款优惠多多 ..</a>
                                                        </h4>
                                                        <div class="readmore font-title">
                                                            <a href="#" target="_self"><span>阅读更多</span> </a>
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
                                                        <div class="infos"><span class="media-date-added"> 2020/5/6 </span>By <span class="media-author">ammi3</span></div>
                                                        <h4 class="media-heading font-title head-item">
                                                            <a href="#" title="你想要的我都有" target="_self">你想要的我都有 ..</a>
                                                        </h4>
                                                        <div class="readmore font-title">
                                                            <a href="#" target="_self"><span>阅读更多</span> </a>
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
                                                        <div class="infos"><span class="media-date-added"> 2020/5/6</span>By <span class="media-author">ammi3</span></div>
                                                        <h4 class="media-heading font-title head-item">
                                                            <a href="#" title="全场优惠多多" target="_self">全场优惠多多 ..</a>
                                                        </h4>
                                                        <div class="readmore font-title">
                                                            <a href="#" target="_self"><span>阅读更多</span> </a>
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

