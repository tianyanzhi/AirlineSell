<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<body>
欢迎您！
${user.accountname}

<form action="/jumpUpUserPf.do">
    <input type="submit" value="修改个人信息">
</form>
用户账号：${user.accountname}<br>
用户密码：${user.password}<br>
用户名字：${user.name}<br>
用户性别：${user.sex}<br>
用户手机号码：${user.phone}<br>
用户email：${user.email}<br>
用户身份证：${user.idnumber}<br>
<a href="/jumpUpUserPwd.do">修改密码</a>!<br>
<a href="/outLogin.do">退出登录</a>!<br>
<a href="/selectAllUserinfo.do?user_acname=${user.accountname}">查看我的乘客信息</a>!<br>

</body>
</html>
