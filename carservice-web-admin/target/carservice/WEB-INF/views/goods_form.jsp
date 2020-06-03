<%--
  Created by IntelliJ IDEA.
  User: 001
  Date: 2020/6/3
  Time: 14:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Car| 商品管理</title>
    <link rel="stylesheet" href="/static/assets/plugins/dropzone/dropzone.css">
    <link rel="stylesheet" href="/static/assets/plugins/dropzone/min/basic.min.css">
    <jsp:include page="../includes/header.jsp"></jsp:include>
</head>
<body class="hold-transition skin-black sidebar-mini">
<div class="wrapper">
    <jsp:include page="../includes/nav.jsp"></jsp:include>

    <jsp:include page="../includes/menu.jsp"></jsp:include>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                商品管理
                <small></small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
                <li class="active">控制面板</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-md-12">

                    <c:if test="${baseResult != null}">
                        <div class="alert alert-${baseResult.status == 200 ? "success" : "danger"} alert-dismissible">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                ${baseResult.message}
                        </div>
                    </c:if>
                    <div class="box box-info">
                        <div class="box-header with-border">
                            <h3 class="box-title">上架商品</h3>
                        </div>
                        <!-- /.box-header -->
                        <!-- form start -->
                        <form:form id="inputForm" cssClass="form-horizontal" action="/goods/save" method="post" modelAttribute="carGoods">
                            <form:hidden path="id" />
                            <div class="box-body">
                                <div class="form-group">
                                    <label for="name" class="col-sm-2 control-label">商品名称</label>

                                    <div class="col-sm-10">
                                        <form:input path="name" cssClass="form-control required" placeholder="请输入商品名称"></form:input>

                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="prices" class="col-sm-2 control-label">商品价格</label>

                                    <div class="col-sm-10">
                                         <form:input path="prices" class="form-control required" placeholder="子标题" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="desc" class="col-sm-2 control-label">商品描述</label>

                                    <div class="col-sm-10">
                                        <form:input path="desc" cssClass="form-control required" placeholder="请输入商品描述"></form:input>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="pic" class="col-sm-2 control-label">商品图片</label>

                                    <div class="col-sm-10">
                                        <form:input path="pic" class="form-control" placeholder="商品图片" />
                                        <div id="dropz" class="dropzone"></div>
                                    </div>
                                </div>

                            </div>
                            <!-- /.box-body -->
                            <div class="box-footer">
                                <button type="button" class="btn btn-default" onclick="history.go(-1)">返回</button>
                                <button type="submit" class="btn btn-info pull-right">提交</button>
                            </div>
                            <!-- /.box-footer -->
                        </form:form>

                    </div>
                </div>
            </div>
        </section>

    </div>

    <jsp:include page="../includes/copyright.jsp" ></jsp:include>


</div>

<jsp:include page="../includes/footer.jsp"></jsp:include>
<script src="/static/assets/plugins/dropzone/min/dropzone.min.js"></script>

<script>
    App.initDropzone({
        id: "#dropz",
        url: "/upload",
        init: function () {
            this.on("success", function (file,data) {
                $("#pic").val(data.fileName);
            })
        }
    });
</script>
</body>
</html>
