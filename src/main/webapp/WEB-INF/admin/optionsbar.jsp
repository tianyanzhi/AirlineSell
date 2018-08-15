<%--
  Created by IntelliJ IDEA.
  User: Nancy
  Date: 2018/8/6
  Time: 15:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core_1_1" %>
<%--样板--%>

<div class="flat-blue">
    <div class="app-container">
        <div class="row content-container">
            <nav class="navbar navbar-default navbar-fixed-top navbar-top">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-expand-toggle">
                            <i class="fa fa-bars icon"></i>
                        </button>
                        <ol class="breadcrumb navbar-breadcrumb">
                            <li class="active">飞一般</li>
                        </ol>
                        <button type="button" class="navbar-right-expand-toggle pull-right visible-xs">
                            <i class="fa fa-th icon"></i>
                        </button>
                    </div>

                    <ul class="nav navbar-nav navbar-right">
                        <button type="button" class="navbar-right-expand-toggle pull-right visible-xs">
                            <i class="fa fa-times icon"></i>
                        </button>
                        <li class="dropdown info">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                               aria-expanded="false"> news </a>
                            <ul class="dropdown-menu info  animated fadeInDown">
                                <li>
                                    <%--此处为假信息，待实现--%>
                                    <ul class="list-group notifications">
                                        <a href="#">
                                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                                新消息
                                                <span class="badge info badge-pill">14</span>
                                            </li>
                                        </a>
                                        <a href="#">
                                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                                新订单
                                                <span class="badge info badge-pill">2</span>
                                            </li>
                                        </a>
                                        <a href="#">
                                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                                订票咨询
                                                <span class="badge info badge-pill">1</span>
                                            </li>
                                        </a>

                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown profile">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                               aria-expanded="false">个人中心 <span class="caret"></span></a>
                            <ul class="dropdown-menu animated fadeInDown">
                                <li class="profile-img">
                                    <img src="../img/profile/picjumbo.com_HNCK4153_resize.jpg" class="profile-img">
                                </li>
                                <li>
                                    <%--此处为假信息，待实现--%>
                                    <div class="profile-info">
                                        <h4 class="username">${admin.accountname}</h4>
                                        <c:if test="${admin.authority eq '1'}"><p><front size="1">管理员</front></p></c:if>
                                        <c:if test="${admin.authority eq '2'}"><p><front size="1">超级管理员</front></p></c:if>
                                        <div class="btn-group margin-bottom-2x" role="group">
                                            <a href="${pageContext.request.contextPath}/jumpShowAd.do">
                                                <button type="button" class="btn btn-default"><i class="fa fa-user"></i>账号设置</button>
                                            </a>
                                            <a href="${pageContext.request.contextPath}/adminOutLogin.do">
                                                <button type="button" class="btn btn-default">
                                                    <i class="fa fa-sign-out"></i> 退出</button>
                                            </a>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </nav>
            <div class="side-menu sidebar-inverse">
                <nav class="navbar navbar-default" role="navigation">
                    <div class="side-menu-container">
                        <div class="navbar-header">

                            <c:if test="${admin.authority eq '1'}"><a class="navbar-brand" href="${pageContext.request.contextPath}/jumpAdMain.do">
                                <div class="icon fa fa-paper-plane"></div>
                                <div class="title">飞一般</div>
                            </a></c:if>
                            <c:if test="${admin.authority eq '2'}"><a class="navbar-brand" href="${pageContext.request.contextPath}/jumpSuAdMain.do">
                                <div class="icon fa fa-paper-plane"></div>
                                <div class="title">飞一般</div>
                            </a></c:if>

                            <button type="button" class="navbar-expand-toggle pull-right visible-xs">
                                <i class="fa fa-times icon"></i>
                            </button>
                        </div>
                        <ul class="nav navbar-nav">
                            <li>
                                <%--实际上主页和初始页面代码相同--%>
                                    <c:if test="${admin.authority eq '1'}"><a href="${pageContext.request.contextPath}/jumpAdMain.do">
                                        <span class="icon fa fa-home"></span><span class="title">主页</span>
                                    </a></c:if>
                                    <c:if test="${admin.authority eq '2'}"><a href="${pageContext.request.contextPath}/jumpSuAdMain.do">
                                        <span class="icon fa fa-home"></span><span class="title">主页</span>
                                    </a></c:if>

                            </li>
                            <li class="panel panel-default dropdown">
                                <a data-toggle="collapse" href="#dropdown-customer">
                                    <span class="icon fa fa-sitemap"></span><span class="title">客户管理</span>
                                </a>
                                <!-- Dropdown level 1 -->
                                <div id="dropdown-customer" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <ul class="nav navbar-nav">
                                            <li>
                                                <a href="${pageContext.request.contextPath}/selectAllUser.do">客户列表</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <li class="panel panel-default dropdown">
                                <a data-toggle="collapse" href="#dropdown-ticket">
                                    <span class="icon fa fa-credit-card"></span><span class="title">订单管理</span>
                                </a>
                                <!-- Dropdown level 1 -->
                                <div id="dropdown-ticket" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <ul class="nav navbar-nav">
                                            <li><a href="${pageContext.request.contextPath}/showOrdersBySta1.do">订票审核</a>
                                            </li>
                                            <li><a href="${pageContext.request.contextPath}/showOrdersBySta3.do">退票管理</a>
                                            </li>

                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <li class="panel panel-default dropdown">
                                <a data-toggle="collapse" href="#dropdown-flightinfo">
                                    <span class="icon fa fa-plane"></span><span class="title">票务管理</span>
                                </a>
                                <!-- Dropdown level 1 -->
                                <div id="dropdown-flightinfo" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <ul class="nav navbar-nav">
                                            <li><a href="${pageContext.request.contextPath}/selectAllAirlinecompany.do">航空公司</a>
                                            </li>
                                            <li><a href="${pageContext.request.contextPath}/selectAllAirplanetype.do">飞机型号</a>
                                            </li>
                                            <li><a href="${pageContext.request.contextPath}/selectAllFlightinfo.do">航班信息</a>
                                            </li>

                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <li class="panel panel-default dropdown">
                                <a data-toggle="collapse" href="#dropdown-report">
                                    <span class="icon fa fa-bar-chart"></span><span class="title">报表管理</span>
                                </a>
                                <!-- Dropdown level 1 -->
                                <div id="dropdown-report" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <ul class="nav navbar-nav">
                                            <li><a href="${pageContext.request.contextPath}/showOrdersBySta5.do">统计分析</a>
                                            <li><a href="${pageContext.request.contextPath}/jumpTicketPrint.do">打印机票</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <li class="panel panel-default dropdown">
                                <a data-toggle="collapse" href="#dropdown-Managementuser">
                                    <span class="icon fa fa-group"></span><span class="title">人员管理</span>
                                </a>
                                <!-- Dropdown level 1 -->
                                <div id="dropdown-Managementuser" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <ul class="nav navbar-nav">
                                            <li><a href="${pageContext.request.contextPath}/jumpReAd.do">添加</a>
                                            </li>
                                            <li><a href="${pageContext.request.contextPath}/selectAllAdmin.do">管理员列表</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
