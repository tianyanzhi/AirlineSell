<%--
  Created by IntelliJ IDEA.
  User: TIANYANZHI
  Date: 2018/8/11 0011
  Time: 23:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>飞一般航空订票-有你更精彩</title>
</head>
<body>
<center>
    <a href="userLogin.jsp"><button type="button">登陆</button></a>
    <a href="userRegister.jsp"><button type="button">注册</button></a>
    <div class="row">
        <div class="col-lg-12">
            <form action="${pageContext.request.contextPath}/SelectFlightinfoByOther.do" method="post">
                出发地：<input type="text" name="start"><br />
                目的地：<input type="text" name="end"><br />
                出发时间：<input type="date" name="starttime"><br />
                到达时间：<input type="date" name="endtime"><br />
                <input type="submit" value="查询">
            </form>
        </div>
    </div>
</center>
</body>
</html>
