<%--
  Created by IntelliJ IDEA.
  User: TIANYANZHI
  Date: 2018/8/11 0011
  Time: 23:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>我的乘车人信息</title>
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
            <div class="panel-heading">乘车人列表</div>

            <div class="panel-body">
                    <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#modalPrimary2">
                        添加乘客信息
                    </button>
            </div>

            <!-- Table -->
            <table class="table table-hover">
                <tr>
                    <th></th>
                    <th>姓名</th>
                    <th>性别</th>
                    <th>电话</th>
                    <th>邮箱</th>
                    <th>身份证号码</th>
                    <th>操作</th>
                </tr>
                <c:forEach items="${pageInfo.list}" var="userinfo">
                    <tr>
                        <td></td>
                        <td>${userinfo.name}</td>
                        <td>${userinfo.sex}</td>
                        <td>${userinfo.phone}</td>
                        <td>${userinfo.email}</td>
                        <td>${userinfo.idnumber}</td>
                        <td>
                            <%--<a href="${pageContext.request.contextPath}/jumpUpUserinfo.do">
                                <button type="button" class="btn btn-danger  btn-sm" onclick="alert('点击修改！')">
                                    修改
                                </button>
                            </a>--%>
                            <button type="button" class="btn btn-danger  btn-sm" data-toggle="modal" data-target="#modalPrimary">删除</button>
                                <!-- Modal -->
                                <div class="modal fade modal-primary" id="modalPrimary" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                <h4 class="modal-title" id="myModalLabel">删除该信息</h4>
                                            </div>
                                            <div class="modal-body">
                                                    <%--<iframe src="${pageContext.request.contextPath}/jumpUpAdPwd.do" width="100%" height="50%" scrolling="no" frameborder="0"> </iframe>--%>
                                                此操作将不可逆，是否删除？
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                                <a href="${pageContext.request.contextPath}/deleteUserinfo.do?idnumber=${userinfo.idnumber}"><button type="button" class="btn btn-danger">确认删除</button></a>
                                            </div>
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
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Modal2 -->
<div class="modal fade modal-primary" id="modalPrimary2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel2">添加一个乘车人</h4>
            </div>
            <div class="modal-body">
                <%--<iframe src="${pageContext.request.contextPath}/jumpUpAdPf.do" width="100%" height="50%" scrolling="no" frameborder="0"> </iframe>--%>
                <form class="form-horizontal" action="addUserinfo.do" method="post">
                    <div class="form-group">
                        <label for="inputName" class="col-sm-2 control-label">姓名</label>
                        <div class="col-sm-10">
                            <input type="hidden" name="user_name" value=${user.accountname}>
                            <input type="text" name="name" class="form-control" id="inputName" required placeholder="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">性别</label>
                        <div class="col-sm-10">
                            <div class="radio3 radio-check radio-success radio-inline">
                                <input type="radio" id="radio4" name="sex" required value="1">
                                <label for="radio4">
                                    帅哥
                                </label>
                            </div>
                            <div class="radio3 radio-check radio-success radio-inline">
                                <input type="radio" id="radio5" name="sex" value="0">
                                <label for="radio5">
                                    美女
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPhone" class="col-sm-2 control-label">电话</label>
                        <div class="col-sm-10">
                            <input type="text" name="phone" class="form-control" id="inputPhone" required placeholder="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputEmail" class="col-sm-2 control-label">邮箱</label>
                        <div class="col-sm-10">
                            <input type="text" name="email" class="form-control" id="inputEmail" required placeholder="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputID" class="col-sm-2 control-label">身份证</label>
                        <div class="col-sm-10">
                            <input type="text" name="idnumber" class="form-control" id="inputID" required placeholder="">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-primary">确认添加</button>&nbsp;&nbsp;
                        </div>
                    </div>
                </form>
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
