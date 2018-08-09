<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <script src="${pageContext.request.contextPath}/js/jquery-3.0.0.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>
    <title>修改机型</title>
</head>
<body>
<center>
    <form action="${pageContext.request.contextPath}/alterAirplanetype.do" method="post">
        要修改的机型是：<input type ="text" name="name"><br />
        new头等舱数：<input type ="text" name="firstnum"><br />
        new商务舱数： <input type="text" name="businessnum"><br />
        new经济舱数： <input type="text" name="economynum"><br />
        <input type="submit" value="确认修改">
    </form>
</center>
</body>
</html>
