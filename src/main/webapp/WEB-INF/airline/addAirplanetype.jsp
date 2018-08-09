<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <script src="${pageContext.request.contextPath}/js/jquery-3.0.0.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>
    <title>添加机型</title>
</head>
<body>
<center>
    <form action="${pageContext.request.contextPath}/addAirplanetype.do" method="post">
        机型名称：<input type="text" name="name"><br />
        头等舱数：<input type ="text" name="firstnum"><br />
        商务舱数： <input type="text" name="businessnum"><br />
        经济舱数： <input type="text" name="economynum"><br />
        <input type="submit" value="添加机型">
    </form>
</center>
</body>
</html>
