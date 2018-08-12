<%--
  Created by IntelliJ IDEA.
  User: TIANYANZHI
  Date: 2018/8/11 0011
  Time: 19:13
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
    <title>列出航班</title>
</head>
<body>
<div class="container">
    <!--标题-->
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <h2>航班列表</h2>
        </div>
    </div>
    <br>
    <!--搜索框-->
    <div class="row">
        <div class="col-lg-12">
            <form action="/SelectFlightinfoByOther.do" method="post">
                出发地：<input type="text" name="start"><br />
                目的地：<input type="text" name="end"><br />
                出发时间：<input type="date" name="starttime"><br />
                到达时间：<input type="date" name="endtime"><br />
                <input type="submit" value="查询">
            </form>
        </div>
    </div>
    <br>
    <!--表格-->
    <div class="row">
        <div class="col-md-12">
            <table class="table table-hover">
                <tr>
                    <th>航班号</th>
                    <th>机型名</th>
                    <th>公司名</th>
                    <th>出发地</th>
                    <th>目的地</th>
                    <th>出发时间</th>
                    <th>到达时间</th>
                    <th>头等舱价格</th>
                    <th>商务舱价格</th>
                    <th>经济舱价格</th>
                    <th></th>
                </tr>
                <c:forEach items="${pageInfo.list}" var="flightinfo">
                    <tr>
                        <c:set var="airname" value="${flightinfo.airlinecompany_name}"></c:set>
                        <td>${flightinfo.flightnumber}</td>
                        <td>${flightinfo.airplanetype_name}</td>
                        <td>${flightinfo.airlinecompany_name}</td>
                        <td>${flightinfo.start}</td>
                        <td>${flightinfo.end}</td>
                        <td>${flightinfo.starttime}</td>
                        <td>${flightinfo.endtime}</td>
                        <td>${flightinfo.firstprice}</td>
                        <td>${flightinfo.businessprice}</td>
                        <td>${flightinfo.economyprice}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/jumpAddOrder.do">
                                <button type="button" class="btn btn-danger  btn-sm" onclick="alert('跳转到支付页面')">
                                    预约
                                </button>
                            </a>
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
                    <li><a href="${pageContext.request.contextPath}/selectAllFlightinfo.do?pn=1">首页</a></li>
                    <li>
                        <c:if test="${pageInfo.hasPreviousPage}">
                            <a href="${pageContext.request.contextPath}/selectAllFlightinfo.do?pn=${pageInfo.pageNum-1}"
                               aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </c:if>
                    </li>
                    <c:forEach items="${pageInfo.navigatepageNums}" var="page_num">
                        <c:if test="${page_num==pageInfo.pageNum}">
                            <li class="active">
                                <a href="${pageContext.request.contextPath}/selectAllFlightinfo.do?pn=${page_num}">${page_num}</a>
                            </li>
                        </c:if>
                        <c:if test="${page_num!=pageInfo.pageNum}">
                            <li>
                                <a href="${pageContext.request.contextPath}/selectAllFlightinfo.do?pn=${page_num}">${page_num}</a>
                            </li>
                        </c:if>
                    </c:forEach>

                    <li>
                        <c:if test="${pageInfo.hasNextPage}">
                            <a href="${pageContext.request.contextPath}/selectAllFlightinfo.do?pn=${pageInfo.pageNum+1}"
                               aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </c:if>
                    </li>
                    <li><a href="${pageContext.request.contextPath}/selectAllFlightinfo.do?pn=${pageInfo.pages}">末页</a></li>
                </ul>
            </nav>
        </div>
        <div class="col-md-2">
            <a href="${pageContext.request.contextPath}/index.do">返回主菜单</a>
        </div>
    </div>

</div>
</body>
<script type="text/javascript">
    function search(){
        var name = $("#t1").val();
        window.location.href="${pageContext.request.contextPath}/selectFlightinfoByAirlinecompanyName.do?airlinecompany_name="+name;
    }
</script>
</html>

