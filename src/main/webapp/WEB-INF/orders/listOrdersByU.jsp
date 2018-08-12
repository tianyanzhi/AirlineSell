<%--
  Created by IntelliJ IDEA.
  User: TIANYANZHI
  Date: 2018/8/8 0008
  Time: 9:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css" rel="stylesheet">
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="${pageContext.request.contextPath}/js/jquery-3.0.0.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.js"></script>
    <title>订单列表</title>
    <!--用户页面-->
    <!--用户页面-->
    <!--用户页面-->
    <!--用户页面-->
    <!--用户页面-->
    <!--用户页面-->
    <!--用户页面-->
</head>
<body>
<div class="container">
    <!--标题-->
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <h2>订单列表</h2>
        </div>
    </div>
    <br>
    <br>
    <!--表格-->
    <div class="row">
        <div class="col-md-12">
            <table class="table table-hover">
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
                <c:forEach items="${pageInfo.list}" var="orders">
                    <tr>
                        <c:set var="sta" value="${orders.status}"></c:set>
                        <c:set var="uname" value="${orders.user_name}"></c:set>
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
                        <td><!--此处应该用if判断a跳转带的status参数是多少-->
                            <c:if test="${orders.status eq '2'}">
                                <a href="${pageContext.request.contextPath}/updateOrderStatus.do?id=${orders.id}&status=3">
                                    <button type="button" class="btn btn-danger  btn-sm" onclick="alert('已退票，待管理员审核中。')">
                                        退票
                                    </button>
                                </a>
                                <a href="${pageContext.request.contextPath}/updateOrderStatus.do?id=${orders.id}&status=5">
                                    <button type="button" class="btn btn-danger  btn-sm" onclick="alert('恭喜，订单已完成！')">
                                        完成
                                    </button>
                                </a>
                            </c:if>
                        </td>
                    </tr>
                </c:forEach>


            </table>

        </div>
    </div>
    <!--分页信息-->
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
        <div class="col-md-2">
            <a href="${pageContext.request.contextPath}/jumpSuAdMain.do">返回主菜单</a>
        </div>

    </div>

</div>
</body>
<script type="text/javascript">
    function search(){
        var name = $("#t1").val();
        window.location.href="${pageContext.request.contextPath}/selectAdminByName.do?name="+name;
    }
</script>
</html>

