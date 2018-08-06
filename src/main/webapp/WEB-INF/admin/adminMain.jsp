<%--
  Created by IntelliJ IDEA.
  User: TIANYANZHI
  Date: 2018/8/6 0006
  Time: 16:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>员工操作</title>
</head>
<body>
    1、更改本账户密码
    2、查看本账户信息
    3、更改本账户个人信息
    4、订单处理（更改订单状态）
    5、打印机票
    6、业绩管理（销售统计图标）
    7、查看所有顾客信息（账户名、积分、账户类型）
    <br><br>
    <a href="${pageContext.request.contextPath}/jumpUpAdPwd.do">更新我的密码</a><br><br>
    <a href="${pageContext.request.contextPath}/jumpUpAdPf.do">更新我的个人信息</a><br><br>
    <a href="${pageContext.request.contextPath}/jumpShowAd.do">显示我的信息</a><br><br>
    <a href="${pageContext.request.contextPath}/adminOutLogin.do">退出</a>
</body>
</html>
