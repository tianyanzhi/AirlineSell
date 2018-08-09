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
    <%--1、更改本账户密码<br>
    2、查看本账户信息<br>
    3、更改本账户个人信息<br>
    4、订单处理（更改订单状态）<br>
    5、打印机票<br>
    6、业绩管理（销售统计图标）<br>
    7、查看所有顾客信息（账户名、积分、账户类型）--%>
    <br><br>
    欢迎${admin.accountname}员工登录<a href="${pageContext.request.contextPath}/adminOutLogin.do">退出登陆</a><br><br>
    员工主要业务：<br><br>
    <a href="${pageContext.request.contextPath}/jumpShowAd.do">我的信息展板（管理员主要模块其一）</a><br><br>
    <a href="${pageContext.request.contextPath}/">管理订单信息（管理员主要模块其二）</a><br><br>
    员工个人业务测试：<br><br>
    <a href="${pageContext.request.contextPath}/jumpUpAdPwd.do">更新我的密码</a><br><br>
    <a href="${pageContext.request.contextPath}/jumpUpAdPf.do">更新我的个人信息</a><br><br>
</body>
</html>
