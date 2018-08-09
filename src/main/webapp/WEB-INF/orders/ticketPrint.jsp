<%--
  Created by IntelliJ IDEA.
  User: TIANYANZHI
  Date: 2018/8/8 0008
  Time: 11:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>机票打印</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:300,400' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900' rel='stylesheet' type='text/css'>
    <!-- CSS Libs -->
    <link rel="stylesheet" type="text/css" href="../lib/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../lib/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="../lib/css/checkbox3.min.css">
    <!-- CSS App -->
    <link rel="stylesheet" type="text/css" href="../css/style.css">
    <link rel="stylesheet" type="text/css" href="../css/themes/flat-blue.css">
</head>
<body>
<%--引入页面--%>
<jsp:include page="/WEB-INF/admin/optionsbar.jsp" />
<!-- Main Content -->
<div class="container-fluid">
    <div class="side-body">
        <div class="page-title">
            <span class="title">机票打印<br></span>
            <div class="description">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Here you can print your ticket.</div>
        </div>
        <div class="row">
            <div class="col-xs-12">
                <div class="card">
                    <div class="card-header">
                        <div class="card-title">
                            <div class="title">请确认机票信息是否正确</div>
                        </div>
                    </div>
                    <div class="card-body">
                        <ul class="list-group">
                            <li class="list-group-item">航班号：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${order.flight_num}</li>
                            <li class="list-group-item">起始地：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${order.flight_start}</li>
                            <li class="list-group-item">目的地：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${order.flight_end}</li>
                            <li class="list-group-item">登机时间：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${order.flight_starttime}</li>
                            <li class="list-group-item">到达时间：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${order.flight_endtime}</li>
                            <li class="list-group-item">乘客名：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${order.userinfo_name}</li>
                            <li class="list-group-item">联系方式：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${order.user_phone}</li>
                            <li class="list-group-item">身份证号：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${order.user_idcard}</li>
                            <li class="list-group-item">价格：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${order.price}</li>
                        </ul>
                        <div class="btn-group" role="group" aria-label="...">
                            <button type="button" class="btn btn-primary btn-primary" data-toggle="modal" data-target="#modalPrimary">
                                &nbsp;&nbsp;&nbsp;&nbsp;出票&nbsp;&nbsp;&nbsp;&nbsp;
                            </button>
                            <!-- Modal -->
                            <div class="modal fade modal-primary" id="modalPrimary" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title" id="myModalLabel">机票打印</h4>
                                        </div>
                                        <div class="modal-body">

                                            <table class="table table-bordered">
                                                <thead>
                                                <tr>
                                                    <th>乘客名</th>
                                                    <th>联系方式</th>
                                                    <th>身份证</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>${order.userinfo_name}</td>
                                                    <td>${order.user_phone}</td>
                                                    <td>${order.user_idcard}</td>
                                                </tr>
                                                </tbody>
                                            </table>
                                            <table class="table table-bordered">
                                                <thead>
                                                <tr>
                                                    <th>航班号</th>
                                                    <th>起始地</th>
                                                    <th>目的地</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>${order.flight_num}</td>
                                                    <td>${order.flight_start}</td>
                                                    <td>${order.flight_end}</td>
                                                </tr>
                                                </tbody>
                                            </table>
                                            <table class="table table-bordered">
                                                <thead>
                                                <tr>
                                                    <th>登机时间</th>
                                                    <th>到达时间</th>
                                                    <th>价格</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>${order.flight_starttime}</td>
                                                    <td>${order.flight_endtime}</td>
                                                    <td>${order.price}</td>
                                                </tr>
                                                </tbody>
                                            </table>



                                        </div>
                                        <div style="text-align:center" class="modal-footer">
                                            <button type="button" class="btn btn-info" data-dismiss="modal" onclick="alert('打印成功！请取票！')">打印</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="text-indent">
                            <div class="sub-title">

                            </div>
                            <div class="text-indent">
                                <p style="font-size:8px;">*请用户在出票窗口取票</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
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
