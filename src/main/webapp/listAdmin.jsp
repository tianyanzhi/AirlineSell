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
    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css" rel="stylesheet">
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="${pageContext.request.contextPath}/js/jquery-3.0.0.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.js"></script>
    <title>列出所有管理员</title>
</head>
<body>
<div class="container">
    <!--标题-->
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <h2>管理员列表</h2>
        </div>
    </div>
    <br>
    <!--搜索框-->
    <div class="row">
        <div class="col-lg-12">
            <div class="input-group">
                <input type="text" id="t1" class="form-control" placeholder="请输入员工姓名">
                <span class="input-group-btn">
                    <button class="btn btn-default" type="button" value="t1.value()" onclick="search(this.value())">搜索</button>
                </span>
                <div class="col-md-8 col-md-offset-8">
                    <button type="button" class="btn btn-success">添加管理员</button>
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
                    <th>账户名</th>
                    <th>权限</th>
                    <th>姓名</th>
                    <th>性别</th>
                    <th>电话</th>
                    <th>邮箱</th>
                    <th></th>
                </tr>
                <c:forEach items="${pageInfo.list}" var="admin">
                    <tr>
                        <td>${admin.accountname}</td>
                        <td>
                            <c:if test="${admin.authority eq '1'}">普通员工</c:if>
                            <c:if test="${admin.authority eq '2'}">管理员</c:if>
                        </td>
                        <td>${admin.name}</td>
                        <td>
                            <c:if test="${admin.sex eq '1'}">男</c:if>
                            <c:if test="${admin.sex eq '0'}">女</c:if>
                        </td>
                        <td>${admin.phone}</td>
                        <td>${admin.email}</td>
                        <td>
                            <button type="button" class="btn btn-danger  btn-sm">
                                <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
                                删除
                            </button>
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
                    <li><a href="${pageContext.request.contextPath}selectAllAdmin.do?pn=1">首页</a></li>
                    <li>
                        <c:if test="${pageInfo.hasPreviousPage}">
                            <a href="${pageContext.request.contextPath}selectAllAdmin.do?pn=${pageInfo.pageNum-1}"
                               aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </c:if>
                    </li>
                    <c:forEach items="${pageInfo.navigatepageNums}" var="page_num">
                        <c:if test="${page_num==pageInfo.pageNum}">
                            <li class="active"><a
                                    href="${pageContext.request.contextPath}selectAllAdmin.do?pn=${page_num}">${page_num}</a>
                            </li>
                        </c:if>
                        <c:if test="${page_num!=pageInfo.pageNum}">
                            <li>
                                <a href="${pageContext.request.contextPath}selectAllAdmin.do?pn=${page_num}">${page_num}</a>
                            </li>
                        </c:if>
                    </c:forEach>

                    <li>
                        <c:if test="${pageInfo.hasNextPage}">
                            <a href="${pageContext.request.contextPath}selectAllAdmin.do?pn=${pageInfo.pageNum+1}"
                               aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </c:if>
                    </li>
                    <li><a href="${pageContext.request.contextPath}selectAllAdmin.do?pn=${pageInfo.pages}">末页</a></li>
                </ul>
            </nav>
        </div>

    </div>

</div>
</body>
<script type="text/javascript">
    function search(value){
        document.forms[0].action="selectAdminByName.do";
        document.forms[0].submit();
    }
</script>
</html>
