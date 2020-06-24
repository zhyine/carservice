<%--
  Created by IntelliJ IDEA.
  User: 75821
  Date: 2020/6/6
  Time: 12:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Car | 购物详情</title>
    <jsp:include page="../includes/header.jsp"></jsp:include>
</head>
<body class="hold-transition skin-black sidebar-mini">
<div class="box-body">
    <table id="dataTable" class="table">
        <tbody>
        <tr>
            <td width="20%">用户：</td>
            <td>${carCart.carUser.username}</td>
        </tr>
        <tr>
            <td width="20%">商品名称：</td>
            <td>${carCart.goods}</td>
        </tr>
        <tr>
            <td width="20%">商品描述：</td>
            <td>${carCart.goodsDesc}</td>
        </tr>
        <tr>
            <td width="20%">商品价格：</td>
            <td>${carCart.prices}</td>
        </tr>
        <tr>
            <td width="20%">商品数量：</td>
            <td>${carCart.nums}</td>
        </tr>
        <tr>
            <td width="20%">商品图片：</td>
            <td><img src="${carCart.pic}" style="width: auto;height: auto;max-width: 100%;max-height: 100%"></td>
        </tr>
        <tr>
            <td width="20%">更新时间：</td>
            <td><fmt:formatDate value="${carCart.updated}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
        </tr>
        </tbody>
    </table>


</div>

<jsp:include page="../includes/footer.jsp"></jsp:include>

</body>
</html>
