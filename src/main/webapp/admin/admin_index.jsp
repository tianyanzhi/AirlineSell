<%--
  Created by IntelliJ IDEA.
  User: Nancy
  Date: 2018/8/6
  Time: 15:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<html>
<head>
    <title>飞一般——后台管理系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:300,400' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900' rel='stylesheet' type='text/css'>
    <!-- CSS Libs -->
    <link rel="stylesheet" type="text/css" href="../lib/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../lib/css/font-awesome.min.css">
    <%--<link rel="stylesheet" type="text/css" href="../lib/css/animate.min.css">--%>
    <%--&lt;%&ndash;<link rel="stylesheet" type="text/css" href="../lib/css/bootstrap-switch.min.css">&ndash;%&gt;--%>
    <link rel="stylesheet" type="text/css" href="../lib/css/checkbox3.min.css">
    <%--<link rel="stylesheet" type="text/css" href="../lib/css/jquery.dataTables.min.css">--%>
    <%--<link rel="stylesheet" type="text/css" href="../lib/css/dataTables.bootstrap.css">--%>
    <%--<link rel="stylesheet" type="text/css" href="../lib/css/select2.min.css">--%>
    <!-- CSS App -->
    <link rel="stylesheet" type="text/css" href="../css/style.css">
    <link rel="stylesheet" type="text/css" href="../css/themes/flat-blue.css">
</head>

<body>
<%--引入页面--%>
<jsp:include page="optionsbar.jsp" />
<!-- Main Content，中间面板的内容 ,以下内容为显示的一个例子，可直接删除-->
<div id="content">
    <div class="container">
        <div class="side-body padding-top">
            <div class="row">
                <div class="card">
                    <div class="card-header">
                        <div class="card-title">
                            <div class="title">案例</div>
                        </div>
                    </div>
                    <div class="card-body">
                        <form class="form-horizontal">
                            <div class="form-group">
                                <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
                                <div class="col-sm-10">
                                    <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
                                <div class="col-sm-10">
                                    <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <div class="checkbox3 checkbox-round checkbox-check checkbox-light">
                                        <input type="checkbox" id="checkbox-10">
                                        <label for="checkbox-10">
                                            Remember me
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="submit" class="btn btn-default">Sign in</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

        <!-- Javascript Libs -->
        <script type="text/javascript" src="../lib/js/jquery.min.js"></script>
        <script type="text/javascript" src="../lib/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="../lib/js/Chart.min.js"></script>
        <script type="text/javascript" src="../lib/js/bootstrap-switch.min.js"></script>
        <script type="text/javascript" src="../lib/js/jquery.matchHeight-min.js"></script>
        <script type="text/javascript" src="../lib/js/jquery.dataTables.min.js"></script>
        <script type="text/javascript" src="../lib/js/dataTables.bootstrap.min.js"></script>
        <script type="text/javascript" src="../lib/js/select2.full.min.js"></script>
        <%--<script type="text/javascript" src="../lib/js/ace/ace.js"></script>--%>
        <%--<script type="text/javascript" src="../lib/js/ace/mode-html.js"></script>--%>
        <%--<script type="text/javascript" src="../lib/js/ace/theme-github.js"></script>--%>
        <!-- Javascript -->
        <script type="text/javascript" src="../js/app.js"></script>
        <script type="text/javascript" src="../js/index.js"></script>

</body>

</html>