<%--
  Created by IntelliJ IDEA.
  User: TIANYANZHI
  Date: 2018/8/11 0011
  Time: 19:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>航班预定</title>
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
    <div style="height: 1000px;" class="container">
        <div class="panel panel-default">
            <!-- Default panel contents -->
            <div class="panel-heading">订单列表</div>
            <!-- Table -->
            <div class="panel-body">
                <form class="form-horizontal" action="${pageContext.request.contextPath}/SelectFlightinfoByOther.do" method="post">
                    <div class="form-group">
                        <label for="input1" class="col-sm-2 control-label" style="color:black;">起始地</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="input1" name="start" placeholder="">
                        </div>
                    </div><div class="form-group">
                    <label for="input2" class="col-sm-2 control-label" style="color:black;">目的地</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="input2" name="end" placeholder="">
                    </div>
                </div><div class="form-group">
                    <label for="input3" class="col-sm-2 control-label" style="color:black;">出行日</label>
                    <div class="col-sm-10">
                        <input type="date" class="form-control" id="input3" name="starttime" placeholder="Email">
                    </div>
                </div><div class="form-group">
                    <label for="input4" class="col-sm-2 control-label" style="color:black;">到达日</label>
                    <div class="col-sm-10">
                        <input type="date" class="form-control" id="input4" name="endtime" placeholder="Email">
                    </div>
                </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-primary">搜索</button>
                        </div>
                    </div>
                </form>
            </div>


            <table class="table table-hover">
                <tr>
                    <th></th>
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
                    <th>操作</th>
                </tr>
                <c:forEach items="${pageInfo.list}" var="flightinfo">
                    <tr>
                        <c:set var="airname" value="${flightinfo.airlinecompany_name}"></c:set>
                        <td></td>
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
                                <button type="button" class="btn btn-danger  btn-sm" data-toggle="modal" data-target="#modalPrimary">预定</button>
                                <!-- Modal -->
                                <div class="modal fade modal-primary" id="modalPrimary" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                <h4 class="modal-title" id="myModalLabel">选择乘客与舱位</h4>
                                            </div>
                                            <div class="modal-body">
                                                <form class="form-horizontal" action="${pageContext.request.contextPath}/addOrder.do" method="post">
                                                    <input type="hidden" name="user_name">
                                                    <input type="hidden" name="userinfo_name">
                                                    <input type="hidden" name="user_phone">
                                                    <input type="hidden" name="user_idcard">
                                                    <input type="hidden" name="flight_num" value=${flightinfo.flightnumber}>
                                                    <input type="hidden" name="flight_start" value=${flightinfo.start}>
                                                    <input type="hidden" name="flight_end" value=${flightinfo.end}>
                                                    <input type="hidden" name="flight_starttime" value=${flightinfo.starttime}>
                                                    <input type="hidden" name="flight_endtime" value=${flightinfo.endtime}>
                                                    <div class="form-group">
                                                        <label for="inputuser" class="col-sm-2 control-label" style="color:black;">乘客</label>
                                                        <div class="col-sm-10">
                                                            <%--<input type="text" class="form-control" id="inputuser" name="start" placeholder="">--%>



                                                            <select class="form-control" id="inputuser" required name="user_name">
                                                                <option value=${user.name}>${user.name}</option>
                                                                <c:forEach items="${pageForUserinfo.list}" var="userinfo">
                                                                    <option value="${userinfo.name}">${userinfo.name}</option>
                                                                </c:forEach>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="inputtype" class="col-sm-2 control-label" style="color:black;">舱位</label>
                                                        <div class="col-sm-10">
                                                                <%--<input type="text" class="form-control" id="inputuser" name="start" placeholder="">--%>
                                                            <select class="form-control" id="inputtype">
                                                                <option name="price" value="${flightinfo.firstprice}">头等舱</option>
                                                                <option name="price" value="${flightinfo.businessprice}">商务舱</option>
                                                                <option name="price" value="${flightinfo.economyprice}">经济舱</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <div class="col-sm-offset-2 col-sm-10">
                                                            <button type="submit" class="btn btn-primary">确认并支付</button>
                                                        </div>
                                                    </div>
                                                </form>




                                            </div>
                                            <%--<div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                                <a href="${pageContext.request.contextPath}/addOrder.do">
                                                    <button type="button" class="btn btn-danger" onclick="alert('恭喜获得免单机会，支付成功！')">支付</button>
                                                </a>
                                            </div>--%>
                                        </div>
                                    </div>
                                </div>
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
</div>
</body>
<script type="text/javascript">
    function search(){
        var name = $("#t1").val();
        window.location.href="${pageContext.request.contextPath}/selectFlightinfoByAirlinecompanyName.do?airlinecompany_name="+name;
    }
</script>
</html>

