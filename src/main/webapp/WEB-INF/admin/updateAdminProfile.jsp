<%--
  Created by IntelliJ IDEA.
  User: TIANYANZHI
  Date: 2018/8/5 0005
  Time: 10:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改管理员个人信息</title>
</head>
<body>
<form action="updateAdminProfile.do" method="post">
    <input type="hidden" name="accountname" value=${admin.accountname}><br/><br/>
    姓名<input type="text" name="name"><br/><br/>
    <select name="sex">
        <option value ='1'>男</option>
        <option value ='2'>女</option>
    </select><br/><br/>
    电话<input type="text" name="phone"><br/><br/>
    邮箱<input type="text" name="email"><br/><br/>
    <input type="submit" value="确认修改">
</form>
</body>
</html>
