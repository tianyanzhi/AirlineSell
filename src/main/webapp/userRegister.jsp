<%--
  Created by IntelliJ IDEA.
  User: TIANYANZHI
  Date: 2018/8/11 0011
  Time: 23:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>飞一般航空订票-用户注册</title>
</head>
<body>
<center>
    <form action="${pageContext.request.contextPath}/addUser.do" method="post">
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
