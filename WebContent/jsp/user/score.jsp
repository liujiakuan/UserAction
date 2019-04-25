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

    <title>得分</title>

    <link rel="stylesheet" href="http://localhost:8080/UserAction/common/bootstrapCode/css/bootstrap.min.css">
    <link rel="stylesheet" href="http://localhost:8080/UserAction/common/bootstrapCode/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="http://localhost:8080/UserAction/common/bootstrapCode/css/bootstrap.css.map">
    <link rel="stylesheet" href="http://localhost:8080/UserAction/common/bootstrapCode/css/bootstrap-theme.css.map">
    <link rel="stylesheet" href="http://localhost:8080/UserAction/css/score.css">

    <script type="text/javascript" src="http://localhost:8080/UserAction/common/bootstrapCode/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="http://localhost:8080/UserAction/common/bootstrapCode/js/npm.js"></script>
    <script type="text/javascript" src="http://localhost:8080/UserAction/common/jquery-2.0.3.min.js"></script>
    <script type="text/javascript" src="http://localhost:8080/UserAction/js/score.js"></script>
</head>
<body>
<!--得分信息，您是第多少位填写的用户感谢填写-->
<div id="body">
    <header class="header">
        <figure>
            <img class="img-responsive scoreHeaderImg" src="http://localhost:8080/UserAction/img/cute2.png" alt="HeaderImage">
            <figcaption></figcaption>
        </figure>
    </header>
    <%--也可以设置一个error相应头，设置当页面发生错误的时候跳转到制定的页面 --%>
    <%
    if(request.getAttribute("score")==null){
    	response.sendRedirect("../error/error500.jsp");
    }else{
    	//如果request.getAttribute("score")==null，则不是从问卷页面跳转过来的，就跳转到一个指定的非法页面
    	//否则程序继续执行
    }
    %>
    <div>
        <p class="text-center scoreP">感谢您的参与，根据内部规则计算您的问卷得分为：<strong class="scoreStrong"><%=request.getAttribute("score") %></strong>分</p>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-xs-8 col-sm-6 col-md-4 col-md-offset-4 col-sm-offset-3 col-xs-offset-2">
                <a href="/UserAction/PrizeController">
	                <button class="getPrizeButton btn-lg btn-success col-xs-12 col-sm-12 col-md-12">
	                	点击查看奖励
	                </button>
                </a>
            </div>
        </div>
    </div>
</div>
</body>
</html>