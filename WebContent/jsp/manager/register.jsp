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

    <title>管理员注册</title>

    <link rel="stylesheet" href="../../common/bootstrapCode/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../common/bootstrapCode/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="../../common/bootstrapCode/css/bootstrap.css.map">
    <link rel="stylesheet" href="../../common/bootstrapCode/css/bootstrap-theme.css.map">
    <link rel="stylesheet" href="../../css/register.css">

    <script type="text/javascript" src="../../common/bootstrapCode/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../../common/bootstrapCode/js/npm.js"></script>
    <script type="text/javascript" src="../../common/jquery-2.0.3.min.js"></script>
    <script type="text/javascript" src="../../js/register.js"></script>
    <script type="text/javascript" src="../../js/data/checkCode.js"></script>

</head>
<body>
<!--管理员注册页面-->
<div id="body">
    <header class="header">
        <figure>
            <img class="img-responsive scoreHeaderImg" src="../../img/register.png" alt="HeaderImage">
            <figcaption></figcaption>
        </figure>
    </header>
    <!---------------------------验证是否符合要求，符合要求就允许提交，否否不允许提交-->
	<hr>
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <div id="errorRegister" class="alert alert-danger text-center" role="alert">
                	用户名或者密码格式不正确，请检查重新填写。
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12">
            <%--这里验证验证码是否正确，通过接收控制器传过来的信息判断 --%>
               <%-- <div id="checkCodeError" class="alert alert-danger text-center" role="alert">
               	这里添加内容,通过jsp来输出
               </div> --%>
            </div>
        </div>
    </div>
    <hr>
    <div class="container-fluid center-vertical loginForm">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6 col-lg-offset-3 col-md-offset-3 col-sm-offset-3">
                <form id="registerForm" class="form-horizontal" role="form" action="/UserAction/CheckReg" method="post">
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
                        <label for="repeatPassword" class="col-sm-2 control-label font-color">确认密码：</label>
                        <div class="col-sm-10">
                            <input name="repeatPassword" type="password" class="form-control" id="repeatPassword" placeholder="请再次输入密码(字符、数字、下划线:6到10位)">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="checkCode" class="col-sm-2 control-label font-color">验证码：</label>
                        <div class="col-sm-10"><!--这里栅格栏不占10份，是因为后面要放一张验证码-->
                            <div class="col-xs-7">
                                <input name="checkCode" type="text" class="form-control" id="checkCode" placeholder="请输入验证码">
                            </div>
                            <div class="col-xs-5">
                                <img id="registerCheckCode" class="img-responsive img-rounded" alt="验证码" name="registerCheckCode" src="checkCode.jsp">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-success">注册</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>