<%--
  Created by IntelliJ IDEA.
  User: TIANYANZHI
  Date: 2018/8/8 0008
  Time: 11:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>报表管理</title>
</head>
<body>
<form action="ticketPrint.do" method="post">
    输入你要打印的机票的订单的身份证号码：<input type="text" name="user_idcard"><br/><br/>
    <input type="submit" value="打印">
</form>
</body>
</html>
