<%--
  Created by IntelliJ IDEA.
  User: TIANYANZHI
  Date: 2018/8/5 0005
  Time: 20:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>我的个人信息</title>
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
            <span class="title">个人资料<br></span>
            <div class="description">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Here you can view your personal information.</div>
        </div>
        <div class="row">
            <div class="col-xs-12">
                <div class="card">
                    <div class="card-header">
                        <div class="card-title">
                            <div class="title">资料卡</div>
                        </div>
                        <div class="pull-right card-action">
                            <div class="btn-group" role="group" aria-label="...">
                                <button type="button" class="btn btn-primary btn-primary" data-toggle="modal" data-target="#modalPrimary">
                                    更改我的密码
                                </button>
                                <!-- Modal -->
                                <div class="modal fade modal-primary" id="modalPrimary" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                <h4 class="modal-title" id="myModalLabel">更改密码</h4>
                                            </div>
                                            <div class="modal-body">
                                                <%--<iframe src="${pageContext.request.contextPath}/jumpUpAdPwd.do" width="100%" height="50%" scrolling="no" frameborder="0"> </iframe>--%>
                                                    <form class="form-horizontal" action="updateAdminPwd.do" method="post">
                                                        <div class="form-group">
                                                            <label for="inputPassword2" class="col-sm-2 control-label">新密码</label>
                                                            <div class="col-sm-10">
                                                                <input type="hidden" name="accountname" value=${admin.accountname}>
                                                                <input type="password" class="form-control" name="password" id="inputPassword2" required pattern="^\w{3,20}$" minlength="6" maxlength="12" placeholder="6-12位数字与字母的结合">
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="inputPassword3" class="col-sm-2 control-label">确认密码</label>
                                                            <div class="col-sm-10">
                                                                <input type="password" class="form-control" id="inputPassword3" required pattern="^\w{3,20}$" minlength="6" maxlength="12" placeholder="6-12位数字与字母的结合">
                                                            </div>
                                                        </div>
                                                        <div id="msg" style="color:red;"></div>
                                                        <div class="form-group">
                                                            <div class="col-sm-offset-2 col-sm-10">
                                                                <button type="submit" class="btn btn-primary" onclick="return checkpwd()">确认修改</button>&nbsp;&nbsp;*更改密码后需要重新登陆
                                                            </div>
                                                        </div>
                                                    </form>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="text-indent">
                            <div class="sub-title">姓名</div>
                            <div class="text-indent">
                                <p style="font-size:16px;font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;${admin.name}</p>
                            </div>
                            <div class="sub-title">性别</div>
                            <div class="text-indent">
                                <p style="font-size:16px;font-weight:bold;">
                                    <c:if test="${admin.sex eq '1'}">&nbsp;&nbsp;&nbsp;&nbsp;男</c:if>
                                    <c:if test="${admin.sex eq '0'}">&nbsp;&nbsp;&nbsp;&nbsp;女</c:if>
                                </p>
                            </div>
                            <div class="sub-title">电话</div>
                            <div class="text-indent">
                                <p style="font-size:16px;font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;${admin.phone}</p>
                            </div>
                            <div class="sub-title">邮箱</div>
                            <div class="text-indent">
                                <p style="font-size:16px;font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;${admin.email}</p>
                            </div>
                            <br>
                            <div>
                                <button type="button" class="btn btn-primary btn-primary" data-toggle="modal" data-target="#modalPrimary2">
                                    更新我的个人信息
                                </button>
                                <!-- Modal -->
                                <div class="modal fade modal-primary" id="modalPrimary2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                <h4 class="modal-title" id="myModalLabel2">修改个人信息</h4>
                                            </div>
                                            <div class="modal-body">
                                                <%--<iframe src="${pageContext.request.contextPath}/jumpUpAdPf.do" width="100%" height="50%" scrolling="no" frameborder="0"> </iframe>--%>
                                                    <form class="form-horizontal" action="updateAdminProfile.do" method="post">
                                                        <div class="form-group">
                                                            <label for="inputName" class="col-sm-2 control-label">姓名</label>
                                                            <div class="col-sm-10">
                                                                <input type="hidden" name="accountname" value=${admin.accountname}>
                                                                <input type="hidden" name="authority" value=${admin.authority}>
                                                                <input type="text" name="name" class="form-control" id="inputName" required placeholder="">
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="col-sm-2 control-label">性别</label>
                                                            <div class="col-sm-10">
                                                                    <div class="radio3 radio-check radio-success radio-inline">
                                                                        <input type="radio" id="radio4" name="sex" required value="1">
                                                                        <label for="radio4">
                                                                            帅哥
                                                                        </label>
                                                                    </div>
                                                                    <div class="radio3 radio-check radio-success radio-inline">
                                                                        <input type="radio" id="radio5" name="sex" value="0">
                                                                        <label for="radio5">
                                                                            美女
                                                                        </label>
                                                                    </div>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="inputPhone" class="col-sm-2 control-label">电话</label>
                                                            <div class="col-sm-10">
                                                                <input type="text" name="phone" class="form-control" id="inputPhone" required placeholder="">
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="inputEmail" class="col-sm-2 control-label">邮箱</label>
                                                            <div class="col-sm-10">
                                                                <input type="text" name="email" class="form-control" id="inputEmail" required placeholder="">
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <div class="col-sm-offset-2 col-sm-10">
                                                                <button type="submit" class="btn btn-primary">确认修改</button>&nbsp;&nbsp;
                                                            </div>
                                                        </div>
                                                    </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
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
<%--<script type="text/javascript" src="../lib/js/ace/ace.js"></script>--%>
<%--<script type="text/javascript" src="../lib/js/ace/mode-html.js"></script>--%>
<%--<script type="text/javascript" src="../lib/js/ace/theme-github.js"></script>--%>
<!-- Javascript -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/app.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/index.js"></script>

</body>

<script type="text/javascript">
    function checkpwd(){
        var p1=$("#inputPassword2").val();//获取密码框的值
        var p2=$("#inputPassword3").val();//获取重新输入的密码值
        if(p1!=p2){//判断两次输入的值是否一致，不一致则显示错误信息
            alert("两次密码不一致！");
            return false;
        }else{
            //密码一致，可以继续下一步操作
        }
    }
</script>
</html>
