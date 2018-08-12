<%--
  Created by IntelliJ IDEA.
  User: TIANYANZHI
  Date: 2018/8/8 0008
  Time: 9:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>我的订单</title>
    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css" rel="stylesheet">
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="${pageContext.request.contextPath}/js/jquery-3.0.0.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.js"></script>
</head>
<body>
<%--引入导航条--%>
<c:if test="${!empty user.accountname}"><jsp:include page="/WEB-INF/user/navbar.jsp" /></c:if>
<c:if test="${empty user.accountname}"><jsp:include page="/WEB-INF/user/navbarLess.jsp" /></c:if>
<br>
<br>
<div class="jumbotron">
    <div style="height: 500px;" class="container">
        <div class="panel panel-default">
            <!-- Default panel contents -->
            <div class="panel-heading">订单列表</div>
            <!-- Table -->
            <table class="table table-hover">
                <tr>
                    <th></th>
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
                <c:forEach items="${pageInfo.list}" var="orders">
                    <tr>
                        <c:set var="sta" value="${orders.status}"></c:set>
                        <c:set var="uname" value="${orders.user_name}"></c:set>
                        <td></td>
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
                            <c:if test="${orders.status eq '2'}">
                                <button type="button" class="btn btn-danger  btn-sm" data-toggle="modal" data-target="#modalPrimary">退票</button>
                                <!-- Modal -->
                                <div class="modal fade modal-primary" id="modalPrimary" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                <h4 class="modal-title" id="myModalLabel">退票确认</h4>
                                            </div>
                                            <div class="modal-body">
                                                 您已支付该订单，是否确认退票？
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                                <a href="${pageContext.request.contextPath}/updateOrderStatus.do?id=${orders.id}&status=3">
                                                    <button type="button" class="btn btn-danger" onclick="alert('已退票，待管理员审核后即退票成功。')">确认退票</button>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <button type="button" class="btn btn-danger  btn-sm" data-toggle="modal" data-target="#modalPrimary9">完成</button>
                                <!-- Modal -->
                                <div class="modal fade modal-primary" id="modalPrimary9" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                <h4 class="modal-title" id="myModalLabel9">订单确认</h4>
                                            </div>
                                            <div class="modal-body">
                                                已确认安全抵达目的地。
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                                <a href="${pageContext.request.contextPath}/updateOrderStatus.do?id=${orders.id}&status=5">
                                                    <button type="button" class="btn btn-danger" onclick="alert('恭喜您，订单完成')">确认</button>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:if>


                        </td>
                    </tr>
                </c:forEach>
            </table>

            <div class="panel-body">
                <div class="row">
                    <%--分页文字信息--%>
                    <div class="col-md-6">
                        当前为第${pageInfo.pageNum}页，总共有${pageInfo.pages}页，共有${pageInfo.total}条记录
                    </div>
                    <%--	分页条--%>
                    <div class="col-md-6">
                        <nav aria-label="Page navigation">
                            <ul class="pagination">
                                <li><a href="${pageContext.request.contextPath}showOrdersByStaAndName.do?pn=1&status=${sta}&user_name=${uname}">首页</a></li>
                                <li>
                                    <c:if test="${pageInfo.hasPreviousPage}">
                                        <a href="${pageContext.request.contextPath}showOrdersByStaAndName.do?pn=${pageInfo.pageNum-1}&status=${sta}&user_name=${uname}"
                                           aria-label="Previous">
                                            <span aria-hidden="true">&laquo;</span>
                                        </a>
                                    </c:if>
                                </li>
                                <c:forEach items="${pageInfo.navigatepageNums}" var="page_num">
                                    <c:if test="${page_num==pageInfo.pageNum}">
                                        <li class="active"><a
                                                href="${pageContext.request.contextPath}showOrdersByStaAndName.do?pn=${page_num}&status=${sta}&user_name=${uname}">${page_num}</a>
                                        </li>
                                    </c:if>
                                    <c:if test="${page_num!=pageInfo.pageNum}">
                                        <li>
                                            <a href="${pageContext.request.contextPath}showOrdersByStaAndName.do?pn=${page_num}&status=${sta}&user_name=${uname}">${page_num}</a>
                                        </li>
                                    </c:if>
                                </c:forEach>

                                <li>
                                    <c:if test="${pageInfo.hasNextPage}">
                                        <a href="${pageContext.request.contextPath}showOrdersByStaAndName.do?pn=${pageInfo.pageNum+1}&status=${sta}&user_name=${uname}"
                                           aria-label="Next">
                                            <span aria-hidden="true">&raquo;</span>
                                        </a>
                                    </c:if>
                                </li>
                                <li><a href="${pageContext.request.contextPath}showOrdersByStaAndName.do?pn=${pageInfo.pages}&status=${sta}&user_name=${uname}">末页</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<footer>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="primary-button text-center">
                    <a href="#" class="scroll-top">返回顶部</a>
                </div>
                <div class="tabs-content" id="weather">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="section-heading">
                                    <h2></h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-12">
                <div class="copy-rights text-center footer">
                    <p>© feiyiban2018 Copyright. - Collect from <a href="https://www.zqu.edu.cn/" title="肇庆学院" target="_blank">肇庆学院</a></p>
                </div>
            </div>
        </div>
    </div>
</footer>






</body>
</html>

