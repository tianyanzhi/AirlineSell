<%--
  Created by IntelliJ IDEA.
  User: TIANYANZHI
  Date: 2018/8/12 0012
  Time: 9:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<nav class="navbar navbar-default  navbar-fixed-top">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="${pageContext.request.contextPath}/index.jsp">飞一般</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <form class="navbar-form navbar-left" action="https://www.baidu.com" method="post">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="百度一下">
                </div>
                <button type="submit" class="btn btn-default">搜索</button>
            </form>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="${pageContext.request.contextPath}/selectAllFlightinfo.do">预约航班</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">我的订单 <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="${pageContext.request.contextPath}/showOrdersByStaAndName.do?user_name=${user.accountname}&status=1">待审核</a></li>
                        <li><a href="${pageContext.request.contextPath}/showOrdersByStaAndName.do?user_name=${user.accountname}&status=2">待乘坐</a></li>
                        <li><a href="${pageContext.request.contextPath}/showOrdersByStaAndName.do?user_name=${user.accountname}&status=5">已完成</a></li>
                        <li><a href="${pageContext.request.contextPath}/showOrdersByStaAndName.do?user_name=${user.accountname}&status=4">已取消</a></li>
                    </ul>
                </li>
                <li><a href="#">${user.accountname}</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">个人中心 <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="${pageContext.request.contextPath}/jumpShowUser.do">个人信息</a></li>
                        <li><a href="${pageContext.request.contextPath}/jumpShowUser.do">设置</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="${pageContext.request.contextPath}/outLogin.do">退出</a></li>
                    </ul>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
