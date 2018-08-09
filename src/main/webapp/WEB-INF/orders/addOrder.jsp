<%--
  Created by IntelliJ IDEA.
  User: TIANYANZHI
  Date: 2018/8/7 0007
  Time: 20:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<html>
<head>
    <title>添加订单</title>
</head>
<body>
<form action="/addOrder.do" method="post">
    账户名<input type="text" name="user_name"><br>
    乘客<input type="text" name="userinfo_name"><br>
    乘客电话<input type="text" name="user_phone"><br>
    身份证<input type="text" name="user_idcard"><br>
    航班号<input type="text" name="flight_num"><br>
    出发地<input type="text" name="flight_start"><br>
    目的地<input type="text" name="flight_end"><br>
    出发时间<input type="datetime-local" name="flight_starttime"><br>
    到达时间<input type="datetime-local" name="flight_endtime"><br>
    价格<input type="text" name="price"><br>
    <input type="hidden" name="status" value=1><br>
    <input type="submit" value="添加">

</form>
</body>
</html>
