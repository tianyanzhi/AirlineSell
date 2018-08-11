<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<body>
<h1>
    欢迎您！
    <p>${user.accountname}</p>
</h1>
<a href="/selectAllFlightinfo.do">预约订票</a><br>
<a href="/showOrdersByStaAndName.do?user_name=${user.accountname}&status=1">待审核的订单</a><br>
<a href="/showOrdersByStaAndName.do?user_name=${user.accountname}&status=2">待完成的订单</a><br>
<a href="/showOrdersByStaAndName.do?user_name=${user.accountname}&status=5">已完成的订单</a><br>
<a href="/showOrdersByStaAndName.do?user_name=${user.accountname}&status=4">已取消的订单</a><br>
<a href="/jumpShowUser.do">查看个人信息</a><br>
<a href="/jumpUpUserPwd.do">修改密码</a><br>
<a href="/outLogin.do">退出登录</a><br>
</body>
</html>
