<%--
  Created by IntelliJ IDEA.
  User: TIANYANZHI
  Date: 2018/8/3 0003
  Time: 20:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>添加一个管理员账户</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:300,400' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900' rel='stylesheet' type='text/css'>
    <!-- CSS Libs -->
    <link rel="stylesheet" type="text/css" href="../lib/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../lib/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="../lib/css/checkbox3.min.css">
    <!-- CSS App -->
    <link rel="stylesheet" type="text/css" href="../css/style.css">
    <link rel="stylesheet" type="text/css" href="../css/themes/flat-blue.css">
</head>
<body>
<%--引入页面--%>
<c:if test="${admin.authority eq '1'}"><jsp:include page="/WEB-INF/admin/optionsbarless.jsp" /></c:if>
<c:if test="${admin.authority eq '2'}"><jsp:include page="/WEB-INF/admin/optionsbar.jsp" /></c:if>
<!-- Main Content -->
<div class="container-fluid">
    <div class="side-body">
        <div class="page-title">
            <span class="title">添加账户<br></span>
            <div class="description">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Here you can add an administrator account.</div>
        </div>

        <div class="row">
            <div class="col-xs-12">
                <div class="card">
                    <div class="card-header">
                        <div class="card-title">
                            <div class="title">请输入以下信息</div>
                        </div>
                    </div>
                    <div class="card-body">
                        <form class="form-horizontal" action="registerAdmin.do" method="post">
                            <div class="form-group">
                                <label for="inputacname" class="col-sm-2 control-label">账户名</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="accountname" id="inputacname" required placeholder="账户名">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputPassword4" class="col-sm-2 control-label">密码</label>
                                <div class="col-sm-10">
                                    <input type="password" class="form-control" id="inputPassword4" name="password" required pattern="^\w{3,20}$" minlength="6" maxlength="12" placeholder="6-12位数字与字母的结合">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputPassword5" class="col-sm-2 control-label">确认密码</label>
                                <div class="col-sm-10">
                                    <input type="password" class="form-control" id="inputPassword5" required pattern="^\w{3,20}$" minlength="6" maxlength="12" placeholder="6-12位数字与字母的结合">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">权限</label>
                                <div class="col-sm-10">
                                    <div class="radio3 radio-check radio-success radio-inline">
                                        <input type="radio" id="radio4" name="authority" required value="1">
                                        <label for="radio4">
                                            管理员
                                        </label>
                                    </div>
                                    <div class="radio3 radio-check radio-success radio-inline">
                                        <input type="radio" id="radio5" name="authority" value="2">
                                        <label for="radio5">
                                            超级管理员
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="submit" class="btn btn-default" onclick="return docheckpwd()">添加</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>



    </div>
</div>
<footer class="app-footer">
    <div class="wrapper">
        <span class="pull-right">2.1 <a href="#"><i class="fa fa-long-arrow-up"></i></a></span> © feiyiban2018 Copyright.
    </div>
</footer>
<!-- Javascript Libs -->
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/js/Chart.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/js/bootstrap-switch.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/js/jquery.matchHeight-min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/js/select2.full.min.js"></script>
<!-- Javascript -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/app.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/index.js"></script>
</body>

<script type="text/javascript">
    function docheckpwd(){
        var p1=$("#inputPassword4").val();//获取密码框的值
        var p2=$("#inputPassword5").val();//获取重新输入的密码值
        var p3=document.getElementById("#radio4");//权限$("#radio4").val()
        var p4=document.getElementById("#radio5");//权限

        var obj2=document.getElementsByName("authority");
        //var temp=0;
        for(var i=0;i<obj2.length;i++){
            if(obj2[i].checked==true){
                temp=1;
                break;
            }else{
                temp=0;
            }
        }
        if(temp==0){alert("请选择权限");return false;}

        if(p1!=p2){//判断两次输入的值是否一致，不一致则显示错误信息
            alert("两次密码不一致！");
            return false;
        }
        else{
            alert("添加成功");//密码一致，可以继续下一步操作
            return true;
        }
    }
</script>
</html>
