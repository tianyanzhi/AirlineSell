<%--
  Created by IntelliJ IDEA.
  User: TIANYANZHI
  Date: 2018/8/7 0007
  Time: 22:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>订单列表</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:300,400' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900' rel='stylesheet' type='text/css'>
    <!-- CSS Libs -->
    <link rel="stylesheet" type="text/css" href="../lib/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../lib/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="../lib/css/checkbox3.min.css">
    <link rel="stylesheet" type="text/css" href="../lib/css/jquery.dataTables.min.css">
    <link rel="stylesheet" type="text/css" href="../lib/css/dataTables.bootstrap.css">
    <!-- CSS App -->
    <link rel="stylesheet" type="text/css" href="../css/style.css">
    <link rel="stylesheet" type="text/css" href="../css/themes/flat-blue.css">
</head>
<body>
<%--引入页面--%>
<c:if test="${admin.authority eq '1'}"><jsp:include page="/WEB-INF/admin/optionsbarless.jsp"/></c:if>
<c:if test="${admin.authority eq '2'}"><jsp:include page="/WEB-INF/admin/optionsbar.jsp"/></c:if>
<!-- Main Content -->
<div class="container-fluid">
    <div class="side-body">
        <div class="page-title">
            <span class="title">订票审核</span>
            <div class="description">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Here you can review your orders.</div>
        </div>
        <div class="row">
            <div class="col-xs-12">
                <div class="card">
                    <div class="card-header">
                        <div class="card-title">
                            <div class="title">订单列表</div>
                        </div>
                    </div>
                    <div class="card-body">
                        <table class="datatable table table-hover" cellspacing="0" width="100%">
                            <thead>
                            <tr>
                                <th>订单号</th>
                                <th>客户名</th>
                                <th>航班号</th>
                                <th>起始地</th>
                                <th>目的地</th>
                                <th>起飞时间</th>
                                <th>到达时间</th>
                                <th>乘客</th>
                                <th>乘客电话</th>
                                <th>身份证</th>
                                <th>价格</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${pageInfo.list}" var="orders">
                                <tr>
                                    <c:set var="sta" value="${orders.status}"></c:set>
                                    <td>${orders.id}</td>
                                    <td>${orders.user_name}</td>
                                    <td>${orders.flight_num}</td>
                                    <td>${orders.flight_start}</td>
                                    <td>${orders.flight_end}</td>
                                    <td>${orders.flight_starttime}</td>
                                    <td>${orders.flight_endtime}</td>
                                    <td>${orders.userinfo_name}</td>
                                    <td>${orders.user_phone}</td>
                                    <td>${orders.user_idcard}</td>
                                    <td>${orders.price}</td>
                                    <td>
                                        <c:if test="${orders.status eq '1'}">
                                            <button type="button" class="btn btn-danger  btn-sm" data-toggle="modal" data-target="#modalPrimary2">通过审核</button>
                                            <!-- Modal -->
                                            <div class="modal fade modal-primary" id="modalPrimary2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                            <h4 class="modal-title" id="myModalLabe2">订单审核</h4>
                                                        </div>
                                                        <div class="modal-body">
                                                            该用户已付款，确认通过审核？
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                                            <a href="${pageContext.request.contextPath}/updateOrderStatus.do?id=${orders.id}&status=2">
                                                                <button type="button" class="btn btn-danger">确定</button>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:if>
                                        <c:if test="${orders.status eq '3'}">
                                            <button type="button" class="btn btn-danger  btn-sm" data-toggle="modal" data-target="#modalPrimary3">允许退票</button>
                                            <!-- Modal -->
                                            <div class="modal fade modal-primary" id="modalPrimary3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                            <h4 class="modal-title" id="myModalLabe3">退票审核</h4>
                                                        </div>
                                                        <div class="modal-body">
                                                            该用户已付款，确认退票并退款？
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                                            <a href="${pageContext.request.contextPath}updateOrderStatus.do?id=${orders.id}&status=4">
                                                                <button type="button" class="btn btn-danger">确定</button>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:if>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<footer class="app-footer">
    <div class="wrapper">
        <span class="pull-right">2.1 <a href="#"><i class="fa fa-long-arrow-up"></i></a></span> © feiyiban2018 Copyright.
    </div>
</footer>
<!-- Javascript Libs -->
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/js/Chart.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/js/bootstrap-switch.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/js/jquery.matchHeight-min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/js/select2.full.min.js"></script>
<!-- Javascript -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/app.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/index.js"></script>







</body>
</html>