<%--
  Created by IntelliJ IDEA.
  User: Yannic
  Date: 2018/8/7
  Time: 14:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=GB18030"
         pageEncoding="GB18030"%>
<html>
<head>
    <title>管理员登录</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:300,400' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900' rel='stylesheet' type='text/css'>
    <!-- CSS Libs -->
    <link rel="stylesheet" type="text/css" href="lib/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="lib/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="lib/css/animate.min.css">
    <link rel="stylesheet" type="text/css" href="lib/css/bootstrap-switch.min.css">
    <link rel="stylesheet" type="text/css" href="lib/css/checkbox3.min.css">
    <link rel="stylesheet" type="text/css" href="lib/css/jquery.dataTables.min.css">
    <link rel="stylesheet" type="text/css" href="lib/css/dataTables.bootstrap.css">
    <link rel="stylesheet" type="text/css" href="lib/css/select2.min.css">
    <!-- CSS App -->
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/themes/flat-blue.css">

    <!--页面内联样式-->
    <style>
        body{
            background-image: url(img/bg/picjumbo.com_HNCK3558.jpg);
        }
    </style>
</head>

<body class="flat-blue login-page">
<div class="container">
    <div class="login-box">
        <div>
            <div class="login-form row">
                <div class="col-sm-12 text-center login-header">
                    <i class="login-logo fa fa-fighter-jet fa-5x"></i>
                    <h4 class="login-title">AirLine</h4>
                </div>
                <div class="row">
                    <div class="col-xs-12">
                        <div class="card">
                            <div class="card-header">
                                <div class="card-title">
                                    <div class="title">管理员登录</div>
                                </div>
                            </div>
                            <div class="card-body">
                                    <form id="loginform" name="loginform" class="form-vertical" method="post" action="checkLogin.do" onSubmit="return mycheck()">
                                        <div class="control">
                                            <input type="text" class="form-control" placeholder="账户名" name="accountname" />
                                        </div>
                                        <div class="control">
                                            <input type="password" class="form-control" placeholder="密码" name="password" />
                                        </div>
                                        <div class="login-button text-center">
                                            <input type="submit" class="btn btn-primary" value="登陆">
                                        </div>
                                        <br>
                                        <p align="center"><front size="2">${msg}</front></p>
                                    </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Javascript Libs -->
<script type="text/javascript" src="lib/js/jquery.min.js"></script>
<script type="text/javascript" src="lib/js/bootstrap.min.js"></script>
<script type="text/javascript" src="lib/js/Chart.min.js"></script>
<script type="text/javascript" src="lib/js/bootstrap-switch.min.js"></script>

<script type="text/javascript" src="lib/js/jquery.matchHeight-min.js"></script>
<script type="text/javascript" src="lib/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="lib/js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript" src="lib/js/select2.full.min.js"></script>
<script type="text/javascript" src="lib/js/ace/ace.js"></script>
<script type="text/javascript" src="lib/js/ace/mode-html.js"></script>
<script type="text/javascript" src="lib/js/ace/theme-github.js"></script>
<!-- Javascript -->
<script type="text/javascript" src="../../js/app.js"></script>

<!--登陆检查-->
<script language="JavaScript">
    function mycheck(){
        if(isNull(loginform.accountname.value)){
            alert("请输入用户名！");
            return false;
        }
        if(isNull(loginform.password.value)){
            alert("请输入密码！");
            return false;
        }
    }
    function isNull(str){
        if ( str == "" ) return true;
        var regu = "^[ ]+$";
        var re = new RegExp(regu);
        return re.test(str);
    }
</script>
</body>
</html>
