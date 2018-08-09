<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <script src="${pageContext.request.contextPath}/js/jquery-3.0.0.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>
    <title>添加航班信息</title>
</head>
<body>
<center>
    <form action="/addFlight.do" method="post">
        航班号：<input type="text" name="flightnumber"><br />
        机型名：<input type="text" name="airplanetype_name"><br />
        公司名：<input type="text" name="airlinecompany_name"><br />
        出发地：<input type="text" name="start"><br />
        目的地：<input type="text" name="end"><br />
      出发时间：<input type="datetime-local" name="starttime"><br />
      到达时间：<input type="datetime-local" name="endtime"><br />
    头等舱价格：<input type="text" name="firstprice"><br />
    商务舱价格：<input type="text" name="businessprice"><br />
    经济舱价格：<input type="text" name="economyprice"><br />
        <input type="submit" value="添加航班信息">
    </form>
</center>
</body>
</html>
