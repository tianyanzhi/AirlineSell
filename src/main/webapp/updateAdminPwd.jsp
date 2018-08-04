<%--
  Created by IntelliJ IDEA.
  User: TIANYANZHI
  Date: 2018/8/4 0004
  Time: 22:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改管理员密码</title>
</head>
<body>
    <form action="updateAdminPwd.do" method="post">
        账户名<input type="text" name="accountname"><br/><br/>
        新密码<input type="text" name="password" required>
        <input type="submit" value="确认修改">
    </form>
</body>
</html>
