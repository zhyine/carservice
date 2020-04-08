<%--
  Created by IntelliJ IDEA.
  User: 75821
  Date: 2020/4/3
  Time: 12:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Car | 内容详情</title>
    <jsp:include page="../includes/header.jsp"></jsp:include>
</head>
<body class="hold-transition skin-black sidebar-mini">
<div class="box-body">
    <table id="dataTable" class="table">
        <tbody>
        <tr>
            <td width="20%">标题：</td>
            <td>${carContent.title}</td>
        </tr>
        <tr>
            <td width="20%">子标题：</td>
            <td>${carContent.subTitle}</td>
        </tr>
        <tr>
            <td width="20%">标题描述：</td>
            <td>${carContent.titleDesc}</td>
        </tr>
        <tr>
            <td width="20%">图片1：</td>
            <td><img src="${carContent.pic}" style="width: auto;height: auto;max-width: 100%;max-height: 100%"></td>
        </tr>
        <tr>
            <td width="20%">图片2：</td>
            <td><img src="${carContent.pic2}" style="width: auto;height: auto;max-width: 100%;max-height: 100%"></td>
        </tr>
        <tr>
            <td width="20%">创建时间：</td>
            <td><fmt:formatDate value="${carContent.created}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
        </tr>
        <tr>
            <td width="20%">更新时间：</td>
            <td><fmt:formatDate value="${carContent.updated}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
        </tr>
        </tbody>
    </table>


</div>

<jsp:include page="../includes/footer.jsp"></jsp:include>

</body>
</html>
