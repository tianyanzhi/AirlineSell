<%--
  Created by IntelliJ IDEA.
  User: TIANYANZHI
  Date: 2018/8/3 0003
  Time: 20:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加一个管理员账户</title>
</head>
<body>
    <form action="registerAdmin.do" method="post">
        账户名：<input type="text" name="accountname"><br/>
        密码：<input type="text" name="password"><br/>
        <select name="authority">
            <option value ='1'>普通员工</option>
            <option value ='2'>管理员</option>
        </select><br/>
        <input type="submit" value="确认添加">
    </form>
</body>
</html>
