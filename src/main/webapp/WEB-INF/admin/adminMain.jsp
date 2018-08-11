<%--
  Created by IntelliJ IDEA.
  User: Nancy
  Date: 2018/8/6
  Time: 15:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>飞一般——后台管理系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:300,400' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900' rel='stylesheet' type='text/css'>
    <!-- CSS Libs -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/lib/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/lib/css/font-awesome.min.css">
    <%--<link rel="stylesheet" type="text/css" href="../lib/css/animate.min.css">--%>
    <%--&lt;%&ndash;<link rel="stylesheet" type="text/css" href="../lib/css/bootstrap-switch.min.css">&ndash;%&gt;--%>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/lib/css/checkbox3.min.css">
    <%--<link rel="stylesheet" type="text/css" href="../lib/css/jquery.dataTables.min.css">--%>
    <%--<link rel="stylesheet" type="text/css" href="../lib/css/dataTables.bootstrap.css">--%>
    <%--<link rel="stylesheet" type="text/css" href="../lib/css/select2.min.css">--%>
    <!-- CSS App -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/themes/flat-blue.css">
</head>

<body>
<%--引入页面--%>
<jsp:include page="optionsbarless.jsp"/>
<!-- Main Content -->
<div class="container-fluid">
    <div class="side-body">
        <div class="page-title">
            <span class="title">主页</span>
            <div class="description">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Here you can manage your database.</div>
        </div>
        <div class="row">
            <div class="col-xs-12">
                <div class="card">
                    <div class="card-header">
                        <div class="card-title">
                            <div class="title">${admin.accountname}，
                                <%
                                    Calendar cal = Calendar.getInstance();
                                    int hour = cal.get(Calendar.HOUR_OF_DAY);
                                    if (hour >= 6 && hour < 8) {
                                %>
                                早上好
                                <%
                                } else if (hour >= 8 && hour < 11) {
                                %>
                                上午好
                                <%
                                } else if (hour >= 11 && hour < 13) {
                                %>
                                中午好
                                <%
                                } else if (hour >= 13 && hour < 18) {
                                %>
                                下午好
                                <%
                                } else {
                                %>
                                晚上好
                                <%
                                    }
                                %>
                            </div>
                        </div>
                        <div class="pull-right card-action">
                            <div class="btn-group" role="group" aria-label="...">
                                <button type="button" class="btn btn-link" data-toggle="modal" data-target="#modalCardExample"><i class="fa fa-code"></i></button>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="text-indent">
                            <h4 align="center">
                                人生就象一场戏,因为有缘才相聚<br><br>
                                &nbsp;&nbsp;&nbsp;相扶到老不容易,是否更该去珍惜<br><br>
                                &nbsp;&nbsp;&nbsp;为了小事发脾气,回头想来又何必<br><br>
                                &nbsp;&nbsp;&nbsp;别人生气我不气,气出病来无人替<br><br>
                                &nbsp;&nbsp;&nbsp;我若气坏谁如意,而且伤神又费力<br><br>
                                &nbsp;&nbsp;&nbsp;出门在外少管事,早去早归少惦记<br><br>
                                &nbsp;&nbsp;&nbsp;邻居亲朋不要比,儿孙琐事随他去<br><br>
                                &nbsp;&nbsp;&nbsp;娃娃降生皆欢喜,人到终年任他去<br><br>
                                &nbsp;&nbsp;&nbsp;吃苦享乐在一起,神仙羡慕好伴侣<br><br>
                                &nbsp;&nbsp;&nbsp;男女老少多注意,莫生气啊莫生气<br><br>
                            </h4>
                        </div>
                        <div class="sub-title">Don't be angry</div>
                        <div class="text-indent">
                            Life is like a play, because predestined to get together.
                            It is not easy to help each other to old age, should we cherish it more?
                            If you lose your temper over a trifle, you don't have to come back to think about it.
                            I am not angry with others; I am angry at my illness and there is no one to replace it.
                            If the gas bad who is happy, but also mind-wracking and laborious.
                            When away from home, take care of little things, and when early, go early, and return early, thinking of little.
                            Don't compare with your neighbors, let your children and grandchildren take care of their trifles.
                            When a baby is born, he will be glad to have it all the year round.
                            The gods envy a good partner when they enjoy themselves together.
                            Men and women, old and young, pay more attention. Don't be angry. Laoge,suanle saunle .Don't be angry.
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="modalCardExample" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">公告栏</h4>
                    </div>
                    <div class="modal-body no-padding">
                        <div id="code-preview-card" class="code-preview">
                            <h1 align="center">今天没有公告！</h1>
                        </div>
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