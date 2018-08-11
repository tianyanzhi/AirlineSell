<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
</head>
<body>
<center>
    <form action="addUser.do" method="post">
        账号：<input type="text" name="accountname"><br/>
        密码：<input type="text" name="password"><br/>
        姓名：<input type="text" name="name"><br/>
        性别：<input type="text" name="sex"><br/>
        电话：<input type="text" name="phone"><br/>
        邮箱：<input type="text" name="email"><br/>
        身份证号码：<input type="text" name="idnumber"><br/>
        <input type="submit" value="确认注册">
    </form>
</center>
</body>
</html>
