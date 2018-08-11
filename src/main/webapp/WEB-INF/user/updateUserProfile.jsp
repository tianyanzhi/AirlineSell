<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改用户个人信息</title>
</head>
<body>
<center>
    <form action="updateUserProfile.do" method="post">
        <input type="hidden" name="accountname" value=${user.accountname}><br/><br/>
        姓名：<input type="text" name="name"><br/>
        性别：<input type="text" name="sex"><br/>
        电话：<input type="text" name="phone"><br/>
        邮箱：<input type="text" name="email"><br/>
        身份证号码：<input type="text" name="idnumber"><br/>
        <input type="submit" value="确认修改">
    </form>
</center>
</body>
</html>
