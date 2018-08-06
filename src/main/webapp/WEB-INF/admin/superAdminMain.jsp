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
    1、更改本账户密码
    2、查看本账户信息
    3、更改本账户个人信息
    4、查看所有管理员与员工（分页）
    5、根据姓名查询所有管理员与员工（分页）
    6、添加一个管理员
    7、删除一个管理员
    8、增加航空公司、CRUD、分页查看
    9、增加飞机型号、CRUD、分页查看
    10、增加航班信息、CRUD、分页查看
    11、订单处理（更改订单状态）
    12、打印机票
    13、业绩管理（销售统计图标）
    14、查看所有顾客（账户名、积分、账户类型）

    <br><br>
    <a href="${pageContext.request.contextPath}/jumpReAd.do">添加管理员</a><br><br>
    <a href="${pageContext.request.contextPath}/jumpDeAd.do">删除管理员</a><br><br>
    <a href="${pageContext.request.contextPath}/jumpUpAdPwd.do">更新我的密码</a><br><br>
    <a href="${pageContext.request.contextPath}/jumpUpAdPf.do">更新我的个人信息</a><br><br>
    <a href="${pageContext.request.contextPath}/jumpShowAd.do">显示我的信息</a><br><br>
    <a href="${pageContext.request.contextPath}/selectAllAdmin.do">列出所有管理员与员工</a><br><br>
    <a href="${pageContext.request.contextPath}/jumpListAdBN.do">根据姓名查找员工</a><br><br>
    <a href="${pageContext.request.contextPath}/adminOutLogin.do">退出登陆</a>
</body>
</html>
