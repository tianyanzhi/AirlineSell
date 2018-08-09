<%--
  Created by IntelliJ IDEA.
  User: Nancy
  Date: 2018/8/6
  Time: 15:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
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
                                        <h4 class="username">用户名</h4>
                                        <p>账号</p>
                                        <div class="btn-group margin-bottom-2x" role="group">
                                            <a href="account_setting.jsp">
                                                <button type="button" class="btn btn-default"><i class="fa fa-user"></i>账号设置</button>
                                            </a>
                                            <a href="../login/adminlogin/admin_login.jsp">
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
                            <a class="navbar-brand" href="#">
                                <div class="icon fa fa-paper-plane"></div>
                                <div class="title">飞一般</div>
                            </a>
                            <button type="button" class="navbar-expand-toggle pull-right visible-xs">
                                <i class="fa fa-times icon"></i>
                            </button>
                        </div>
                        <ul class="nav navbar-nav">
                            <li>
                                <%--实际上主页和初始页面代码相同--%>
                                <a href="home.jsp">
                                    <span class="icon fa fa-home"></span><span class="title">主页</span>
                                </a>
                            </li>
                            <li class="panel panel-default dropdown">
                                <a data-toggle="collapse" href="#dropdown-customer">
                                    <span class="icon fa fa-sitemap"></span><span class="title">客户管理</span>
                                </a>
                                <!-- Dropdown level 1 -->
                                <div id="dropdown-customer" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <ul class="nav navbar-nav">
                                            <li><a href="customer_list.jsp">客户列表</a>
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
                                            <li><a href="bookReview.jsp">订票审核</a>
                                            </li>
                                            <li><a href="refund.jsp">退票管理</a>
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
                                            <li><a href="airlines.jsp">航空公司</a>
                                            </li>
                                            <li><a href="planes_type.jsp">飞机型号</a>
                                            </li>
                                            <li><a href="ticket_info.jsp">机票信息</a>
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
                                            <li><a href="sales.jsp">统计分析</a>
                                            <li><a href="ticket_print.jsp">打印机票</a>
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
                                            <li><a href="admin_add.jsp">添加</a>
                                            </li>
                                            <li><a href="admin_list.jsp">管理员列表</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>



