<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <script src="${pageContext.request.contextPath}/js/jquery-3.0.0.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>
    <title>登陆</title>
</head>
<body>
<center>
    <form action="${pageContext.request.contextPath}/userCheckLogin.do" method="post">
        用户名:<input name="accountname" type="text"><br>
        密码:<input name="password" type="password"><br>
        <input type="submit" value="登录">
        <p align="center"><front size="2">${msg}</front></p>
    </form>
    <a href="userRegister.jsp"><button type="button">注册</button></a>
    <a href="${pageContext.request.contextPath}/adminLogin.do"><button type="button">我是管理员</button></a>
</center>
</body>

</html>
