<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="en">

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,user-scalable=no" />
    <!--<meta name="viewport" content="width=device-width, initial-scale=1.0" />-->
    <meta name="keywords" content="成都信息工程大学，成信大,成信大学生,成信大学生行为调查分析">
    <meta name="description" content="成都信息工程大学，成信大,成信大学生,成信大学生行为调查分析">
    <meta name="author" content="最帅的刘先生">
    <meta name="soft" content="WebStorm">
    <meta name="copyRight" content="刘先生版权所有，拒绝盗版，盗版必究">

    <title>登录</title>

    <link rel="stylesheet" href="http://localhost:8080/UserAction/common/bootstrapCode/css/bootstrap.min.css">
    <link rel="stylesheet" href="http://localhost:8080/UserAction/common/bootstrapCode/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="http://localhost:8080/UserAction/common/bootstrapCode/css/bootstrap.css.map">
    <link rel="stylesheet" href="http://localhost:8080/UserAction/common/bootstrapCode/css/bootstrap-theme.css.map">
    <link rel="stylesheet" href="http://localhost:8080/UserAction/css/login.css">

    <script type="text/javascript" src="http://localhost:8080/UserAction/common/bootstrapCode/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="http://localhost:8080/UserAction/common/bootstrapCode/js/npm.js"></script>
    <script type="text/javascript" src="http://localhost:8080/UserAction/common/jquery-2.0.3.min.js"></script>
    <script type="text/javascript" src="http://localhost:8080/UserAction/js/login.js"></script>
    <script type="text/javascript" src="http://localhost:8080/UserAction/js/data/checkCode.js"></script>

</head>
<body>
<!--管理员登陆页面-->
<div id="body">
    <header class="header">
        <figure>
            <img class="img-responsive scoreHeaderImg" src="http://localhost:8080/UserAction/img/cute.jpeg" alt="HeaderImage">
            <figcaption></figcaption>
        </figure>
    </header>
    <!---------------------------验证是否符合要求，符合要求就允许提交，否否不允许提交-->
	<hr>
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <div id="errorLogin" class="alert alert-danger text-center" role="alert">用户名或者密码格式不正确，请检查后重新填写。</div>
            </div>
        </div>
    </div>
    <%--<div class="container-fluid">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <div id="errorAllOption" class="alert alert-danger text-center" role="alert">题目没有填完,请检查完善。</div>
            </div>
        </div>
    </div> --%>
    <hr>
    <div class="container-fluid center-vertical loginForm">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6 col-lg-offset-3 col-md-offset-3 col-sm-offset-3">
                <form id="loginForm" class="form-horizontal" role="form" action="/UserAction/CheckLog" method="post">
                    <div class="form-group">
                        <label for="userName" class="col-sm-2 control-label font-color">用户名：</label>
                        <div class="col-sm-10">
                            <input name="userName" type="text" class="form-control" id="userName" placeholder="请输入用户名(字符、数字、下划线、中文:6到10位)">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="password" class="col-sm-2 control-label font-color">密&nbsp;&nbsp;码：</label>
                        <div class="col-sm-10">
                            <input name="password" type="password" class="form-control" id="password" placeholder="请输入密码(字符、数字、下划线:6到10位)">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="checkCode" class="col-sm-2 control-label font-color">验证码：</label>
                        <div class="col-sm-10"><!--这里栅格栏不占10份，是因为后面要放一张验证码-->
                            <div class="col-xs-7">
                                <input name="checkCode" type="text" class="form-control" id="checkCode" placeholder="请输入验证码">
                            </div>
                            <div class="col-xs-5">
                                <img id="loginCheckCode" class="img-responsive img-rounded" alt="验证码" name="loginCheckCode" src="http://localhost:8080/UserAction/jsp/manager/checkCode.jsp">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <div class="checkbox">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input id="checkBox" type="checkbox">
                                <label for="checkBox">一周内自动记住密码</label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-success">登录</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>