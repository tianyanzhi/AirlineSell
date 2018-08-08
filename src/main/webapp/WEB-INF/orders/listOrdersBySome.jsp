<%--
  Created by IntelliJ IDEA.
  User: TIANYANZHI
  Date: 2018/8/7 0007
  Time: 22:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>根据订单状态查询</title>
</head>
<body>
<form action="showOrdersBySta.do" method="post"><!--嵌入时隐性输入嵌入到按钮，可以满足管理员审核（两个）-->
    选择你要查询的订单的状态：
    <select name="status">
        <option value ='1'>支付待审核</option>
        <option value ='2'>用户待乘坐</option>
        <option value ='3'>退票待审核</option>
        <option value ='4'>被退票的订单</option>
        <option value ='5'>已完成的订单</option>
    </select><br/><br/>
    <input type="submit" value="查找">
</form>
<form action="showOrdersByUName.do" method="post">
    请管理员输入用户名来查询相关订单：<input type="text" name="user_name"><br/><br/>
    <input type="submit" value="查找">
</form>
<form action="showOrdersByUName.do" method="post">
    请管理员输入乘客身份证来显示机票详细信息（打印机票按钮应该在详细信息页面）：<input type="text" name="user_idcard"><br/><br/>
    <input type="submit" value="转到机票打印页面">
</form>
<br>
<br>
<br>
<br>
<br>
<form action="showOrdersByStaAndName.do" method="post">
    输入你的用户名<input type="text" name="user_name"><br/><br/>
    请用户选择查找的订单的状态：
    <select name="status">
        <option value ='2'>待乘坐</option>
        <option value ='1'>支付待审核</option>
        <option value ='3'>退票待审核</option>
        <option value ='4'>退票成功的订单</option>
        <option value ='5'>已完成的订单</option>
    </select><br/><br/>
    <input type="submit" value="查找">
</form>
</body>
</html>
