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
    <title>管理员操作</title>
</head>
<body>
<%--    1、更改本账户密码<br>
    2、查看本账户信息<br>
    3、更改本账户个人信息<br>
    4、查看所有管理员与员工（分页）<br>
    5、根据姓名查询所有管理员与员工（分页）<br>
    6、添加一个管理员<br>
    7、删除一个管理员<br>
    8、增加航空公司、CRUD、分页查看<br>
    9、增加飞机型号、CRUD、分页查看<br>
    10、增加航班信息、CRUD、分页查看<br>
    11、订单处理（更改订单状态）<br>
    12、打印机票<br>
    13、业绩管理（销售统计图标）<br>
    14、查看所有顾客（账户名、积分、账户类型）--%>

    <br><br>
    欢迎${admin.accountname}管理员登录<a href="${pageContext.request.contextPath}/adminOutLogin.do">退出登陆</a><br><br>
    管理员主要业务：<br><br>
    <a href="${pageContext.request.contextPath}/jumpShowAd.do">我的信息展板（管理员主要模块其一）</a><br><br>
    <a href="${pageContext.request.contextPath}/selectAllAdmin.do">管理员与员工列表（管理员主要模块其二）</a><br><br>
    <a href="${pageContext.request.contextPath}/">管理航空公司（管理员主要模块其三）</a><br><br>
    <a href="${pageContext.request.contextPath}/">管理航空公司（管理员主要模块其四）</a><br><br>
    <a href="${pageContext.request.contextPath}/">管理飞机型号（管理员主要模块其五）</a><br><br>
    <a href="${pageContext.request.contextPath}/">管理机票信息（管理员主要模块其六）</a><br><br>
    <a href="${pageContext.request.contextPath}/">管理订单信息（管理员主要模块其七）</a><br><br>
    <a href="${pageContext.request.contextPath}/">报表生成（管理员主要模块其八）</a><br><br>
    管理员个人业务测试：<br><br>
    <a href="${pageContext.request.contextPath}/jumpReAd.do">添加管理员</a><br><br>
    <a href="${pageContext.request.contextPath}/jumpDeAd.do">删除管理员</a><br><br>
    <a href="${pageContext.request.contextPath}/jumpUpAdPwd.do">更新我的密码</a><br><br>
    <a href="${pageContext.request.contextPath}/jumpUpAdPf.do">更新我的个人信息</a><br><br>
    <a href="${pageContext.request.contextPath}/jumpListAdBN.do">根据姓名查找员工</a><br><br>

</body>
</html>
