<%--
  Created by IntelliJ IDEA.
  User: TIANYANZHI
  Date: 2018/8/7 0007
  Time: 21:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>更改订单状态</title>
</head>
<body>
<form action="updateOrderStatus.do" method="post">
    你要更改的订单id为：<input type="text" name="id"><br/><br/>
    你要将此订单更改为：<input type="text" name="status">状态<br/><br/>
    <input type="submit" value="确认更改">
</form>
</body>
</html>
