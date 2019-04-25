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

    <title>奖励领取</title>

    <link rel="stylesheet" href="http://localhost:8080/UserAction/common/bootstrapCode/css/bootstrap.min.css">
    <link rel="stylesheet" href="http://localhost:8080/UserAction/common/bootstrapCode/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="http://localhost:8080/UserAction/common/bootstrapCode/css/bootstrap.css.map">
    <link rel="stylesheet" href="http://localhost:8080/UserAction/common/bootstrapCode/css/bootstrap-theme.css.map">
    <link rel="stylesheet" href="http://localhost:8080/UserAction/css/getPrize.css">

    <script type="text/javascript" src="http://localhost:8080/UserAction/common/bootstrapCode/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="http://localhost:8080/UserAction/common/bootstrapCode/js/npm.js"></script>
    <script type="text/javascript" src="http://localhost:8080/UserAction/common/jquery-2.0.3.min.js"></script>
    <script type="text/javascript" src="http://localhost:8080/UserAction/js/getPrize.js"></script>
</head>
<body>
<!--领取奖品页面，告诉用户只是测试，显示剩余多少份-->
<div id="body">
    <header class="header">
        <figure>
            <img class="img-responsive center-block img-circle prizeHeader" src="http://localhost:8080/UserAction/img/cute3.jpg" alt="HeaderImage">
            <figcaption></figcaption>
        </figure>
    </header>
    <%
    if(request.getAttribute("prizeCount")==null){
    	response.sendRedirect("../error/error500.jsp");
    }else{
    	
    }
    %>
    <div class="prizeCount">
        <p class="text-center">当前奖品还有 <strong class="prizeStrong"><%=request.getAttribute("prizeCount") %></strong> 份</p>
    </div>
    <div class="container getPrize">
        <div class="row">
            <div class="col-xs-8 col-sm-6 col-md-4 col-md-offset-4 col-sm-offset-3 col-xs-offset-2">
                <a href="/UserAction/GetPrizeController">
	                <button class="getPrizeButton btn-lg btn-success col-xs-12 col-sm-12 col-md-12">
	                <!-- 后期这里采用servlet输出的方式，因为这里没有处理当奖品数量为0的情况，当奖品数量为0的时候跳转到查看领取奖励页面 -->
	                    	点击领取
	                </button>
                </a>
            </div>
        </div>
    </div>
</div>
</body>
</html>