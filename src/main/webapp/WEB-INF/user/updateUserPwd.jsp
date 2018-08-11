<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改用户密码</title>
</head>
<body>
    <form action="updateUserPwd.do" method="post">
        <input type="hidden" name="accountname" value=${user.accountname}><br/><br/>
        新密码<input type="text" name="password" required>
        <input type="submit" value="确认修改">
    </form>
</body>
</html>
