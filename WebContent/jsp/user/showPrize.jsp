<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="en">

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,user-scalable=no" />
    <meta name="keywords" content="成都信息工程大学，成信大,成信大学生,成信大学生行为调查分析">
    <meta name="description" content="成都信息工程大学，成信大,成信大学生,成信大学生行为调查分析">
    <meta name="author" content="最帅的刘先生">
    <meta name="soft" content="WebStorm">
    <meta name="copyRight" content="刘先生版权所有，拒绝盗版，盗版必究">

    <title>领取到的奖品</title>

    <link rel="stylesheet" href="http://localhost:8080/UserAction/common/bootstrapCode/css/bootstrap.min.css">
    <link rel="stylesheet" href="http://localhost:8080/UserAction/common/bootstrapCode/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="http://localhost:8080/UserAction/common/bootstrapCode/css/bootstrap.css.map">
    <link rel="stylesheet" href="http://localhost:8080/UserAction/common/bootstrapCode/css/bootstrap-theme.css.map">
    <link rel="stylesheet" href="http://localhost:8080/UserAction/css/showPrize.css">

    <script type="text/javascript" src="http://localhost:8080/UserAction/common/bootstrapCode/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="http://localhost:8080/UserAction/common/bootstrapCode/js/npm.js"></script>
    <script type="text/javascript" src="http://localhost:8080/UserAction/common/jquery-2.0.3.min.js"></script>
    <script type="text/javascript" src="http://localhost:8080/UserAction/js/showPrize.js"></script>
</head>
<body>
<div id="body">
    <header class="header">
        <figure>
            <img class="img-responsive showPrizeHeaderImg center-block" src="http://localhost:8080/UserAction/img/showPrize.png" alt="HeaderImage">
            <figcaption></figcaption>
        </figure>
    </header>
    <%
    if(request.getAttribute("prizeCount")==null||request.getAttribute("prizeName")==null){
    	response.sendRedirect("../error/error500.jsp");
    }
    %>
    <div class="prizeCount">
        <p class="text-center">当前奖品还有 <strong class="prizeStrong"><%=request.getAttribute("prizeCount") %></strong> 份</p>
    </div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-xs-12 col-sm-12 col-lg-offset-3 col-md-offset-3">
                <div class="alert alert-warning text-center prizeWarning" role="alert">
                		领取到的奖品是：<%=request.getAttribute("prizeName") %><br>
                    	谢谢您的参与与支持，这个奖品功能只是做个测试，没有真正的奖品。
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-xs-8 col-sm-6 col-md-4 col-lg-offset-4 col-md-offset-4 col-sm-offset-3 col-xs-offset-2">
                <a href="http://localhost:8080/UserAction/AwardeePage">
	                <button class="showPrizeButton btn-lg btn-success col-xs-12 col-sm-12 col-md-12">
	                    	查看获奖列表
	                </button>
                </a>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-xs-8 col-sm-6 col-md-4 col-lg-offset-4 col-md-offset-4 col-sm-offset-3 col-xs-offset-2">
                <a href="/UserAction/Quit">
	                <button class="showPrizeButton btn-lg btn-success col-xs-12 col-sm-12 col-md-12">
	                    	点击退出
	                </button>
                </a>
            </div>
        </div>
    </div>
</div>
</body>
</html>