<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <script src="${pageContext.request.contextPath}/js/jquery-3.0.0.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>
    <title>添加航空公司</title>
</head>
<body>
<center>
    <form action="${pageContext.request.contextPath}/addAirlinecompany.do" method="post">
        公司名称：<input type="text" name="name"><br />
        公司代码：<input type ="text" name="companycode"><br />
        公司地址： <input type="text" name="address"><br />
        公司网址： <input type="text" name="website"><br />
        公司电话： <input type="text" name="phone"><br />
        <input type="submit" value="添加航空公司">
    </form>
</center>
</body>
</html>
