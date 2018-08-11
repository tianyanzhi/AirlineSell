<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/js/jquery-3.0.0.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.js"></script>
    <title>列出乘客</title>
</head>
<body>
<div class="container">
    <!--标题-->
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <h2>乘客列表</h2>
        </div>
    </div>
    <br>
    <!--搜索框-->
    <div class="row">
        <div class="col-lg-12">
            <div class="input-group">
                ${msgd}
                <div class="col-md-8 col-md-offset-8">
                        <a href="${pageContext.request.contextPath}/jumpAddUserinfo.do">
                            <button type="button" class="btn btn-success">
                            添加乘客信息
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
                    <th>姓名</th>
                    <th>性别</th>
                    <th>电话</th>
                    <th>邮箱</th>
                    <th>身份证号码</th>
                    <th></th>
                </tr>
                <c:forEach items="${pageInfo.list}" var="userinfo">
                    <tr>
                        <td>${userinfo.name}</td>
                        <td>${userinfo.sex}</td>
                        <td>${userinfo.phone}</td>
                        <td>${userinfo.email}</td>
                        <td>${userinfo.idnumber}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/jumpUpUserinfo.do">
                                <button type="button" class="btn btn-danger  btn-sm" onclick="alert('点击修改！')">
                                    修改
                                </button>
                            </a>
                            <a href="${pageContext.request.contextPath}/deleteUserinfo.do?idnumber=${userinfo.idnumber}">
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
                    <li><a href="${pageContext.request.contextPath}/selectAllUserinfo.do?pn=1&user_acname=${user.accountname}">首页</a></li>
                    <li>
                        <c:if test="${pageInfo.hasPreviousPage}">
                            <a href="${pageContext.request.contextPath}/selectAllUserinfo.do?pn=${pageInfo.pageNum-1}&user_acname=${user.accountname}"
                               aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </c:if>
                    </li>
                    <c:forEach items="${pageInfo.navigatepageNums}" var="page_num">
                        <c:if test="${page_num==pageInfo.pageNum}">
                            <li class="active"><a
                                    href="${pageContext.request.contextPath}/selectAllUserinfo.do?pn=${page_num}&user_acname=${user.accountname}">${page_num}</a>
                            </li>
                        </c:if>
                        <c:if test="${page_num!=pageInfo.pageNum}">
                            <li>
                                <a href="${pageContext.request.contextPath}/selectAllUserinfo.do?pn=${page_num}&user_acname=${user.accountname}">${page_num}</a>
                            </li>
                        </c:if>
                    </c:forEach>

                    <li>
                        <c:if test="${pageInfo.hasNextPage}">
                            <a href="${pageContext.request.contextPath}/selectAllUserinfo.do?pn=${pageInfo.pageNum+1}&user_acname=${user.accountname}"
                               aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </c:if>
                    </li>
                    <li><a href="${pageContext.request.contextPath}/selectAllUserinfo.do?pn=${pageInfo.pages}&user_acname=${user.accountname}">末页</a></li>
                </ul>
            </nav>
        </div>
        <div class="col-md-2">
            <a href="${pageContext.request.contextPath}/index.do">返回主菜单</a>
        </div>
    </div>

</div>
</body>
</html>
