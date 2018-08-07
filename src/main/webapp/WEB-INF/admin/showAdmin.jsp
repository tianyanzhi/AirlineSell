<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: TIANYANZHI
  Date: 2018/8/5 0005
  Time: 20:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员个人信息展示</title>
</head>
<body>
${admin.name}<br>
${admin.sex}<br>
${admin.phone}<br>
${admin.email}<br>
<a href="${pageContext.request.contextPath}/jumpUpAdPwd.do">更新我的密码</a><br><br>
<a href="${pageContext.request.contextPath}/jumpUpAdPf.do">更新我的个人信息</a><br><br>
<c:if test="${admin.authority eq '1'}">
    <a href="${pageContext.request.contextPath}/jumpAdMain.do">返回主菜单</a>
</c:if>
<c:if test="${admin.authority eq '2'}">
    <a href="${pageContext.request.contextPath}/jumpSuAdMain.do">返回主菜单</a>
</c:if>
</body>
</html>
