<%--
  Created by IntelliJ IDEA.
  User: TIANYANZHI
  Date: 2018/8/11 0011
  Time: 23:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>飞一般航空订票-有你更精彩</title>
    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css" rel="stylesheet">
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="${pageContext.request.contextPath}/js/jquery-3.0.0.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.js"></script>
</head>
<body>
<%--引入导航条--%>
<c:if test="${!empty user.accountname}"><jsp:include page="/WEB-INF/user/navbar.jsp" /></c:if>
<c:if test="${empty user.accountname}"><jsp:include page="/WEB-INF/user/navbarLess.jsp" /></c:if>
<br>
<br>
<div style="background: url(img/bg/main.jpg);" class="jumbotron">
    <h1 align="right" style="color:white;">所爱隔山海，带你去旅行&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h1>
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-6 col-md-5">
                <form class="form-horizontal" action="${pageContext.request.contextPath}/SelectFlightinfoByOther.do" method="post">
                    <div class="form-group">
                        <label for="input1" class="col-sm-2 control-label" style="color:white;">起始地</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="input1" name="start" placeholder="">
                        </div>
                    </div><div class="form-group">
                        <label for="input2" class="col-sm-2 control-label" style="color:white;">目的地</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="input2" name="end" placeholder="">
                        </div>
                    </div><div class="form-group">
                        <label for="input3" class="col-sm-2 control-label" style="color:white;">出行日</label>
                        <div class="col-sm-10">
                            <input type="date" class="form-control" id="input3" name="starttime" placeholder="Email">
                        </div>
                    </div><div class="form-group">
                        <label for="input4" class="col-sm-2 control-label" style="color:white;">到达日</label>
                        <div class="col-sm-10">
                            <input type="date" class="form-control" id="input4" name="endtime" placeholder="Email">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-default">出发</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<div class="page-header">
    <h1>&nbsp;&nbsp;&nbsp;&nbsp;有你在的风景才叫景点&nbsp;&nbsp;<small>热门旅游城市</small></h1>
</div>
<div class="jumbotron">
    <div class="container">
        <div class="row">
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <img src="img/bg/111.jpg" alt="...">
                    <div class="caption">
                        <h3>广州</h3>
                        <p style="font-size: 18px"><small>别称羊城，是中国南方最大的海滨城市，距今已有2200多年的历史。</small></p>
                        <p><a href="#" class="btn btn-primary" role="button">糟了，是心动的感觉</a>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <img src="img/bg/222.jpg" alt="...">
                    <div class="caption">
                        <h3>拉斯维加斯</h3>
                        <p style="font-size: 18px"><small>美国内华达州最大的城市，也是座享有极高国际声誉的城市。</small></p>
                        <p><a href="#" class="btn btn-primary" role="button">糟了，是心动的感觉</a>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <img src="img/bg/333.jpg" alt="...">
                    <div class="caption">
                        <h3>东京</h3>
                        <p style="font-size: 18px"><small>地处赤道，密集的热浪向你袭来，当你察觉的时候已经晚了。</small></p>
                        <p><a href="#" class="btn btn-primary" role="button">糟了，是心动的感觉</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="page-header">
    <h1>&nbsp;&nbsp;&nbsp;&nbsp;记录旅行是一种好习惯&nbsp;&nbsp;<small>明星游记</small></h1>
</div>
<div class="jumbotron">
    <div class="container">
        <div class="row">
            <div class="col-xs-6 col-md-3">
                <a href="#" class="thumbnail">
                    <img src="img/bg/444.jpg" alt="...">
                </a>
            </div>
            <div class="col-xs-6 col-md-3">
                <a href="#" class="thumbnail">
                    <img src="img/bg/555.jpg" alt="...">
                </a>
            </div>
            <div class="col-xs-6 col-md-3">
                <a href="#" class="thumbnail">
                    <img src="img/bg/666.jpg" alt="...">
                </a>
            </div>
            <div class="col-xs-6 col-md-3">
                <a href="#" class="thumbnail">
                    <img src="img/bg/777.jpg" alt="...">
                </a>
            </div>
        </div>
        <p align="center"><a class="btn btn-primary btn-lg" href="#" role="button">了解更多</a></p>
    </div>
</div>
<footer>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="primary-button text-center">
                    <a href="#" class="scroll-top">返回顶部</a>
                </div>
                <div class="tabs-content" id="weather">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="section-heading">
                                    <h2></h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-12">
                <div class="copy-rights text-center footer">
                    <p>© feiyiban2018 Copyright. - Collect from <a href="https://www.zqu.edu.cn/" title="肇庆学院" target="_blank">肇庆学院</a></p>
                </div>
            </div>
        </div>
    </div>
</footer>

</body>
</html>
