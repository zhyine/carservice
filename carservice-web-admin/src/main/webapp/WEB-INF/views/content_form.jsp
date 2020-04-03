<%--
  Created by IntelliJ IDEA.
  User: 75821
  Date: 2020/4/3
  Time: 11:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sys" tagdir="/WEB-INF/tags/sys"%>
<html>
<head>
    <title>Car | 内容管理</title>
    <jsp:include page="../includes/header.jsp"></jsp:include>
    <link rel="stylesheet" href="/static/assets/plugins/jquery-ztree/css/zTreeStyle/zTreeStyle.min.css" />
    <link rel="stylesheet" href="/static/assets/plugins/dropzone/dropzone.css">
    <link rel="stylesheet" href="/static/assets/plugins/dropzone/min/basic.min.css">
    <link rel="stylesheet" href="/static/assets/plugins/wangEditor/wangEditor.min.css">
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
                内容管理
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
                            <h3 class="box-title">新增内容</h3>
                        </div>
                        <!-- /.box-header -->
                        <!-- form start -->
                        <form:form id="inputForm" cssClass="form-horizontal" action="/content/save" method="post" modelAttribute="carContent">
                            <form:hidden path="id" />
                            <div class="box-body">
                                <div class="form-group">
                                    <label class="col-sm-1 control-label">父级节点</label>

                                    <div class="col-sm-11">
                                        <form:hidden id="categoryId" path="carContentCategory.id" />
                                        <input id="categoryName" class="form-control required" placeholder="请选择" data-toggle="modal" data-target="#modal-default" value="${carContent.carContentCategory.name}"/>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="title" class="col-sm-1 control-label">标题</label>

                                    <div class="col-sm-11">
                                        <form:input path="title" class="form-control required" placeholder="标题" />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="subTitle" class="col-sm-1 control-label">子标题</label>

                                    <div class="col-sm-11">
                                        <form:input path="subTitle" class="form-control required" placeholder="子标题" />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="titleDesc" class="col-sm-1 control-label">标题描述</label>

                                    <div class="col-sm-11">
                                        <form:input path="titleDesc" class="form-control required" placeholder="标题描述" />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="url" class="col-sm-1 control-label">链接</label>

                                    <div class="col-sm-11">
                                        <form:input path="url" class="form-control" placeholder="链接" />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="url" class="col-sm-1 control-label">图片1</label>

                                    <div class="col-sm-11">
                                        <form:input path="pic" class="form-control" placeholder="图片1" />
                                        <div id="dropz" class="dropzone"></div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="url" class="col-sm-1 control-label">图片2</label>

                                    <div class="col-sm-11">
                                        <form:input path="pic2" class="form-control" placeholder="图片2" />
                                        <div id="dropz2" class="dropzone"></div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-1 control-label">详情</label>

                                    <div class="col-sm-11">
                                            <%--                                        <form:input path="content" class="form-control" placeholder="内容" />--%>
                                        <form:hidden path="content" />
                                        <div id="editor">
                                                ${carContent.content}
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <!-- /.box-body -->
                            <div class="box-footer">
                                <button type="button" class="btn btn-default" onclick="history.go(-1)">返回</button>
                                <button id="btnSubmit" type="submit" class="btn btn-info pull-right">提交</button>
                                    <%--                                <button id="test1" type="button" class="btn btn-default">测试</button>--%>
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
<script src="/static/assets/plugins/jquery-ztree/js/jquery.ztree.core-3.5.min.js"></script>
<script src="/static/assets/plugins/dropzone/min/dropzone.min.js"></script>
<script src="/static/assets/plugins/wangEditor/wangEditor.min.js"></script>

<%--自定义模态框--%>
<sys:modal title="请选择父级结点" message="<ul id='myTree' class='ztree'></ul>" />

<script>
    $(function () {
        App.initZTree("/content/category/tree/data",["id"],function (nodes) {
            var node = nodes[0];
            $('#categoryId').val(node.id);
            $('#categoryName').val(node.name);
            $('#modal-default').modal("hide");
        });

        var E = window.wangEditor;
        var editor = new E('#editor');
        editor.customConfig.uploadImgServer = '/upload';
        editor.customConfig.uploadFileName = 'editorFile';
        editor.create();

        $("#btnSubmit").bind("click", function () {
            var contentHtml = editor.txt.html();
            //alert(contentHtml);
            $("#content").val(contentHtml);
            //return false;
        });
    });

    App.initDropzone({
        id: "#dropz",
        url: "/upload",
        init: function () {
            this.on("success", function (file,data) {
                $("#pic").val(data.fileName);
            })
        }
    });

    App.initDropzone({
        id: "#dropz2",
        url: "/upload",
        init: function () {
            this.on("success", function (file,data) {
                $("#pic2").val(data.fileName);
            })
        }
    });
</script>
</body>
</html>

