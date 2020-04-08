<%--
  Created by IntelliJ IDEA.
  User: 75821
  Date: 2020/3/31
  Time: 14:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Car | 用户详情</title>
    <jsp:include page="../includes/header.jsp"></jsp:include>
</head>
<body class="hold-transition skin-black sidebar-mini">
<div class="box-body">
    <table id="dataTable" class="table">
        <tbody>
        <tr>
            <td>邮箱：</td>
            <td>${carUser.email}</td>
        </tr>
        <tr>
            <td>姓名：</td>
            <td>${carUser.username}</td>
        </tr>
        <tr>
            <td>手机：</td>
            <td>${carUser.phone}</td>
        </tr>
        <tr>
            <td>创建时间：</td>
            <td><fmt:formatDate value="${carUser.created}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
        </tr>
        <tr>
            <td>更新时间：</td>
            <td><fmt:formatDate value="${carUser.updated}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
        </tr>
        </tbody>
    </table>


</div>

<jsp:include page="../includes/footer.jsp"></jsp:include>

</body>
</html>

