<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <script src="${pageContext.request.contextPath}/js/jquery-3.0.0.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>
    <title>修改公司信息</title>
</head>
<body>
<center>
    <form action="${pageContext.request.contextPath}/alterAirlinecompany.do" method="post">
        要修改的公司是：<input type ="text" name="name"><br />
        new公司代码：<input type ="text" name="companycode"><br />
        new公司地址： <input type="text" name="address"><br />
        new公司网址： <input type="text" name="website"><br />
        new公司电话： <input type="text" name="phone"><br />
        <input type="submit" value="确认修改">
    </form>
</center>
</body>
</html>
