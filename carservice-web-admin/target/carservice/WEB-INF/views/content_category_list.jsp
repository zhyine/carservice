<%--
  Created by IntelliJ IDEA.
  User: 75821
  Date: 2020/4/1
  Time: 20:29
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
    <%--引入TreeTable--%>
    <link rel="stylesheet" href="/static/assets/plugins/treeTable/themes/vsStyle/treeTable.min.css" />
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
                <li><a href="/main"><i class="fa fa-dashboard"></i> 首页</a></li>
                <li class="active">控制面板</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-xs-12">

                    <c:if test="${baseResult != null}">
                        <div class="alert alert-${baseResult.status == 200 ? "success" : "danger"} alert-dismissible">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                ${baseResult.message}
                        </div>
                    </c:if>

                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">分类列表</h3>
                        </div>

                        <div class="box-body">
                            <a href="/content/category/form" type="button" class="btn btn-sm btn-default"><i class="fa fa-plus"></i>新增</a>&nbsp;
<%--                            <button type="button" class="btn btn-sm btn-default"><i class="fa fa-trash"></i>删除</button>&nbsp;--%>
                            <%--                            <a href="#" type="button" class="btn btn-sm btn-default"><i class="fa fa-upload"></i>导入</a>&nbsp;--%>
                            <%--                            <a href="#" type="button" class="btn btn-sm btn-default"><i class="fa fa-download"></i>导出</a>--%>
                        </div>

                        <!-- /.box-header -->
                        <div class="box-body table-responsive no-padding">
                            <table id="treeTable" class="table table-hover">
                                <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>名称</th>
                                    <th>排序</th>
                                    <th>操作</th>
                                </tr>
                                </thead>

                                <tbody>
                                <c:forEach items="${carContentCategories}" var="carContentCategory">
                                    <tr id="${carContentCategory.id}" pId="${carContentCategory.parentId}">
                                        <td>${carContentCategory.id}</td>
                                        <td>${carContentCategory.name}</td>
                                        <td>${carContentCategory.sortOrder}</td>
                                        <td>
                                            <a href="/content/category/form?id=${carContentCategory.id}" type="button" class="btn btn-sm btn-primary"><i class="fa fa-edit">编辑</i></a>&nbsp;
                                            <a href="javascript:void(0)" type="button" class="btn btn-sm btn-danger" onclick="App.deleteOne('/content/category/delete', '${carContentCategory.id}', '警告：该删除操作会将包括选中类目在内的全部子类目及属于类目的内容一并删除，请谨慎操作！您还确定继续吗？')"><i class="fa fa-trash-o">删除</i></a>
<%--                                            <a href="#" type="button" class="btn btn-sm btn-default"><i class="fa fa-plus">新增下级菜单</i></a>&nbsp;--%>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                </div>
            </div>
        </section>
    </div>
    <jsp:include page="../includes/copyright.jsp" ></jsp:include>

    <jsp:include page="../includes/footer.jsp"></jsp:include>
    <%--自定义模态框--%>
    <sys:modal/>
    <%--引入Tree Table--%>
    <script src="/static/assets/plugins/treeTable/jquery.treeTable.min.js"></script>

    <script>
        $('#treeTable').treeTable({
            column: 1,
            expandLevel: 2
        });
    </script>
</body>

</html>