<%--
  Created by IntelliJ IDEA.
  User: 75821
  Date: 2020/5/11
  Time: 16:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>购物车</title>
    <jsp:include page="../includes/header.jsp"></jsp:include>
</head>
<body class="res layout-1">
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

                                            <span class="total-shopping-cart cart-total-full">
                                                <%--                                            <span class="items_cart">02</span><span class="items_cart2"> item(s)</span><span class="items_carts">$162.00</span>--%>
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
    <div class="main-container container">
        <ul class="breadcrumb">
            <li><a href="#"><i class="fa fa-home"></i></a></li>
            <li><a href="#">购物车</a></li>
        </ul>

        <div class="row">
            <!--Middle Part Start-->
            <div id="content" class="col-sm-12">
                <h2 class="title">购物车</h2>
                <div class="table-responsive form-group">
                    <table class="table table-bordered">
                        <thead>
                        <tr>
                            <td class="text-center">商品图片</td>
                            <td class="text-left">商品名称</td>
                            <td class="text-left">商品描述</td>
                            <td class="text-left">数量</td>
                            <td class="text-right">价格/个</td>
                            <td class="text-right">合计</td>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td class="text-center"><a href="product.html"><img width="70px" src="/static/image/catalog/demo/product/270/3.jpg" alt="Aspire Ultrabook Laptop" title="Aspire Ultrabook Laptop" class="img-thumbnail" /></a></td>
                            <td class="text-left"><a href="product.html">改装装备</a><br />
                            </td>
                            <td class="text-left">Pt 001</td>
                            <td class="text-left" width="200px"><div class="input-group btn-block quantity">
                                <input type="text" name="quantity" value="1" size="1" class="form-control" />
                                <span class="input-group-btn">
                            <button type="submit" data-toggle="tooltip" title="Update" class="btn btn-primary"><i class="fa fa-clone"></i></button>
                            <button type="button" data-toggle="tooltip" title="Remove" class="btn btn-danger" onClick=""><i class="fa fa-times-circle"></i></button>
                            </span></div></td>
                            <td class="text-right">￥114.00</td>
                            <td class="text-right">￥114.00</td>
                        </tr>
                        <c:forEach items="${cart1}" var="cart1">
                            <tr>
                                <td class="text-center"><a href="product.html"><img width="70px" src="${cart1.pic}" alt="Xitefun Causal Wear Fancy Shoes" title="Xitefun Causal Wear Fancy Shoes" class="img-thumbnail" /></a></td>
                                <td class="text-left"><a href="product.html">${cart1.goods}</a></td>
                                <td class="text-left">${cart1.goodsDesc}</td>
                                <td class="text-left" width="200px"><div class="input-group btn-block quantity">
                                <input type="text" name="quantity" value="${cart1.nums}" size="2" class="form-control" />
                                <span class="input-group-btn">
                                    <button type="submit" data-toggle="tooltip" title="Update" class="btn btn-primary"><i class="fa fa-clone"></i></button>
                                    <button type="button" data-toggle="tooltip" title="Remove" class="btn btn-danger" onClick=""><i class="fa fa-times-circle"></i></button>
                                </span></div></td>
                                <td class="text-right">￥${cart1.prices}</td>
                                <td class="text-right">￥${cart1.prices}*${cart1.nums}</td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
                <h3 class="subtitle no-margin">填写信息</h3>
                <p>请填写手机号或者邮箱</p>
                <div class="panel-group" id="accordion">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a href="#collapse-coupon" class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" aria-expanded="true">联系方式

                                    <i class="fa fa-caret-down"></i>
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-coupon" class="panel-collapse collapse in" aria-expanded="true">
                            <div class="panel-body">
                                <label class="col-sm-2 control-label" for="input-coupon">手机号</label>
                                <div class="input-group">
                                    <input type="text" name="coupon" value="" placeholder="Enter your coupon here" id="input-coupon" class="form-control">
                                    <span class="input-group-btn"><input type="button" value="确认" id="button-coupon" data-loading-text="Loading..." class="btn btn-primary"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a href="#collapse-shipping" class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" aria-expanded="false">住址

                                    <i class="fa fa-caret-down"></i>
                                </a>
                            </h4>
                        </div>
                        <div id="collapse-shipping" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">
                            <div class="panel-body">
                                <p>请输入您的住址信息.</p>
                                <div class="form-horizontal">
                                    <div class="form-group required">
                                        <label class="col-sm-2 control-label" for="input-country">城市</label>
                                        <div class="col-sm-10">
                                            <select name="country_id" id="input-country" class="form-control">
                                                <option value=""> --- 请选择 --- </option>
                                                <option value="244">上海</option>
                                                <option value="1">北京</option>
                                                <option value="2">苏州</option>
                                                <option value="3">杭州</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group required">
                                        <label class="col-sm-2 control-label" for="input-zone">区域</label>
                                        <div class="col-sm-10">
                                            <select name="zone_id" id="input-zone" class="form-control">
                                                <option value=""> --- 区域 --- </option>
                                                <option value="3513">杨浦区</option>
                                                <option value="3514">浦东新区/option>
                                                <option value="3515">徐汇区</option>
                                                <option value="3516">奉贤区</option>
                                                <option value="3517">崇明岛</option>
                                                <option value="3518">静安区</option>
                                                <option value="3519">闵行区</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group required">
                                        <label class="col-sm-2 control-label" for="input-postcode">具体信息</label>
                                        <div class="col-sm-10"><input type="text" name="postcode" value="" placeholder="门牌号等" id="input-postcode" class="form-control"></div>
                                    </div>
                                    <button type="button" id="button-quote" data-loading-text="Loading..." class="btn btn-primary">确认</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-4 col-sm-offset-8">
                        <table class="table table-bordered">
                            <tbody>
                            <tr>
                                <td class="text-right">
                                    <strong>商品:</strong>
                                </td>
                                <td class="text-right">￥168.71</td>
                            </tr>
                            <tr>
                                <td class="text-right">
                                    <strong>包装:</strong>
                                </td>
                                <td class="text-right">￥4.69</td>
                            </tr>
                            <tr>
                                <td class="text-right">
                                    <strong>运费:</strong>
                                </td>
                                <td class="text-right">￥34.68</td>
                            </tr>
                            <tr>
                                <td class="text-right">
                                    <strong>综合:</strong>
                                </td>
                                <td class="text-right">￥213.70</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>

                <div class="buttons">
                    <div class="pull-left"><a href="/index" class="btn btn-primary">继续购物</a></div>
                    <div class="pull-right"><a href="checkout.html" class="btn btn-primary">核对</a></div>
                </div>
            </div>
            <!--Middle Part End -->

        </div>
    </div>
    <!-- //Main Container -->

</div>


<jsp:include page="../includes/footer.jsp"></jsp:include>
</body>
</html>
