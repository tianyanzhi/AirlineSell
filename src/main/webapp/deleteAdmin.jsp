<%--
  Created by IntelliJ IDEA.
  User: TIANYANZHI
  Date: 2018/8/3 0003
  Time: 23:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>删除一个管理员</title>
</head>
<body>
    <form action="deleteAdmin.do" method="post">
        输入你要删除的员工账户名：<input type="text" name="accountname"><br/><br/>
        <input type="submit" value="确认删除">
    </form>
</body>
</html>
