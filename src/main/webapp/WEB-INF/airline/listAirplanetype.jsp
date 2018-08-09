<%--
  Created by IntelliJ IDEA.
  User: TIANYANZHI
  Date: 2018/8/6 0006
  Time: 8:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/js/jquery-3.0.0.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.js"></script>
    <title>列出机型</title>
</head>
<body>
<div class="container">
    <!--标题-->
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <h2>机型列表</h2>
        </div>
    </div>
    <br>
    <!--搜索框-->
    <div class="row">
        <div class="col-lg-12">
            <div class="input-group">
                <input type="text" id="t1" class="form-control" placeholder="输入机型名">
                <span class="input-group-btn">
                    <button class="btn btn-default" type="button" onclick="search()">搜索</button>
                </span>
                ${msgd}
                <div class="col-md-8 col-md-offset-8">
                        <a href="${pageContext.request.contextPath}/jumpAddAp.do">
                            <button type="button" class="btn btn-success">
                            添加机型信息
                            </button>
                        </a>
                </div>
            </div>
        </div>
    </div>
    <br>
    <!--表格-->
    <div class="row">
        <div class="col-md-12">
            <table class="table table-hover">
                <tr>
                    <th>机型名</th>
                    <th>头等舱数量</th>
                    <th>商务舱数量</th>
                    <th>经济舱数量</th>
                    <th></th>
                </tr>
                <c:forEach items="${pageInfo.list}" var="airplanetype">
                    <tr>
                        <td>${airplanetype.name}</td>
                        <td>${airplanetype.firstnum}</td>
                        <td>${airplanetype.businessnum}</td>
                        <td>${airplanetype.economynum}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/jumpAlterAp.do">
                                <button type="button" class="btn btn-danger  btn-sm" onclick="alert('点击修改！')">
                                    修改
                                </button>
                            </a>
                            <a href="${pageContext.request.contextPath}/deleteAirplanetype.do?name=${airplanetype.name}">
                                <button type="button" class="btn btn-danger  btn-sm" onclick="alert('点击删除！')">
                                    删除
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
                    <li><a href="${pageContext.request.contextPath}/selectAllAirplanetype.do?pn=1">首页</a></li>
                    <li>
                        <c:if test="${pageInfo.hasPreviousPage}">
                            <a href="${pageContext.request.contextPath}/selectAllAirplanetype.do?pn=${pageInfo.pageNum-1}"
                               aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </c:if>
                    </li>
                    <c:forEach items="${pageInfo.navigatepageNums}" var="page_num">
                        <c:if test="${page_num==pageInfo.pageNum}">
                            <li class="active"><a
                                    href="${pageContext.request.contextPath}/selectAllAirplanetype.do?pn=${page_num}">${page_num}</a>
                            </li>
                        </c:if>
                        <c:if test="${page_num!=pageInfo.pageNum}">
                            <li>
                                <a href="${pageContext.request.contextPath}/selectAllAirplanetype.do?pn=${page_num}">${page_num}</a>
                            </li>
                        </c:if>
                    </c:forEach>

                    <li>
                        <c:if test="${pageInfo.hasNextPage}">
                            <a href="${pageContext.request.contextPath}/selectAllAirplanetype.do?pn=${pageInfo.pageNum+1}"
                               aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </c:if>
                    </li>
                    <li><a href="${pageContext.request.contextPath}/selectAllAirplanetype.do?pn=${pageInfo.pages}">末页</a></li>
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
        window.location.href="${pageContext.request.contextPath}/selectAirplanetypeByName.do?name="+name;
    }
</script>
</html>
