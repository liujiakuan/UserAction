<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.bean.AwardeeBean"%>
<%@page import="java.util.List"%>
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

    <title>获奖列表</title>

    <link rel="stylesheet" href="http://localhost:8080/UserAction/common/bootstrapCode/css/bootstrap.min.css">
    <link rel="stylesheet" href="http://localhost:8080/UserAction/common/bootstrapCode/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="http://localhost:8080/UserAction/common/bootstrapCode/css/bootstrap.css.map">
    <link rel="stylesheet" href="http://localhost:8080/UserAction/common/bootstrapCode/css/bootstrap-theme.css.map">
    <link rel="stylesheet" href="http://localhost:8080/UserAction/css/prizeLisst.css">

    <script type="text/javascript" src="http://localhost:8080/UserAction/common/bootstrapCode/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="http://localhost:8080/UserAction/common/bootstrapCode/js/npm.js"></script>
    <script type="text/javascript" src="http://localhost:8080/UserAction/common/jquery-2.0.3.min.js"></script>
    <script type="text/javascript" src="http://localhost:8080/UserAction/js/prizeList.js"></script>
</head>
<body>
<!--查看领取奖品的用户列表，第多少位访问的用户领取了奖品-->
<div id="body">
    <header class="header">
        <figure>
            <img class="img-responsive prizeListHeaderImg" src="http://localhost:8080/UserAction/img/prizeList.png" alt="HeaderImage">
            <figcaption></figcaption>
        </figure>
    </header>
    <div class="container-fluid">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="table-responsive">
                    <table class="table table-striped">
                        <caption class="text-center tableCaption">奖品领取列表</caption>
                        <thead>
                        <tr class="trBgColor">
                            <th class="text-center">昵称</th>
                            <th class="text-center">奖品</th>
                            <th class="text-center">时间</th>
                        </tr>
                        </thead>
                        <tbody>
                        <%--
                        List<AwardeeBean> list=new ArrayList();
                        list=request.getAttribute("awardeeList");
                        --%>
                        <%
                        List<AwardeeBean> list = (List)request.getAttribute("awardeeList");
                        for(int i=0;i<list.size();i++)
                        {  
                        	AwardeeBean awardeeBean=(AwardeeBean)list.get(i);  
                          %>    
                        <tr class="trHover">
                            <th class="text-center"><%=awardeeBean.getUserName() %></th>
                            <th class="text-center"><%=awardeeBean.getPrizeName() %></th>
                            <th class="text-center"><%=awardeeBean.getGetPrizeTime() %></th>
                        </tr>
                         <% }  
                        %>
                        <%--
                         <tr class="trHover">
                            <th class="text-center">小杨</th>
                            <th class="text-center">XXX奖品</th>
                            <th class="text-center">2016-6-8:5时8分56秒</th>
                        </tr>
                        <tr class="trHover">
                            <th class="text-center">刘先生</th>
                            <th class="text-center">XXX奖品</th>
                            <th class="text-center">2016-7-8:22时12分26秒</th>
                        </tr>
                        <tr class="trHover">
                            <th class="text-center">小宽</th>
                            <th class="text-center">XXX奖品</th>
                            <th class="text-center">2016-7-26:16时448分0秒</th>
                        </tr>
                        <tr class="trHover">
                            <th class="text-center">老刘</th>
                            <th class="text-center">XXX奖品</th>
                            <th class="text-center">2016-9-26:23时11分20秒</th>
                        </tr>
                         --%>
                        </tbody>
                    </table>
                </div>
            </div>
            <hr>
        </div>

        <div class="row">
            <div class="pageCount col-xs-12 col-sm-8 col-md-6 col-lg-4 col-md-offset-2 col-lg-offset-2">
                <ul class="pagination pagination-lg pageUl">
                <%--用js写一个脚本，是当前页号高亮 --%>
                <%
                int pageCount=(int)request.getAttribute("pageCount");
                if(pageCount==1){
                %>
                	<li><a href="/UserAction/AwardeePage?pageNow=1">1</a></li>
                <%}
                else{
                	%>
                	<li><a href="/UserAction/AwardeePage?pageTurn=last">&laquo;</a></li>
                	<%
	                	  for(int i=1;i<=pageCount;i++){
	                		  %>
	                          <li><a class="pageNowId" href="/UserAction/AwardeePage?pageNow=<%=i%>"><%=i%></a></li>
	                          <% }
                	%>
                	<li><a href="/UserAction/AwardeePage?pageTurn=next">&raquo;</a></li>
                	<%
                }%>
                	
                </ul>
            </div>
            <%-- 
            <script type="text/javascript">
            $(document).ready(function(){
            	var pageNowId=$(".pageUl li a");
            	var pageUl=$(".pageUl li a").length;
            	for(var i=0;i<pageUl;i++){
            		if(pageNowId[i].innerHTML==getCookie("pageNowCookie")){
            			pageNowId[i].setAttribute('class','btn-success');
            		}
            	}
            	//获取指定cookie
            	function getCookie(cookieName) {
            	    var strCookie = document.cookie;
            	    var arrCookie = strCookie.split("; ");
            	    for(var i = 0; i < arrCookie.length; i++){
            	        var arr = arrCookie[i].split("=");
            	        if(cookieName == arr[0]){
            	            return arr[1];
            	        }
            	    }
            	    return "";
            	}
            });
            </script>--%>
            <div class="choosePageCount col-xs-12 col-sm-4 col-md-4 col-lg-4">
                <div class="input-group">
                    <form action="/UserAction/AwardeePage" method="get"><%--写脚本来控制这里，如果这里输入的是空就禁止跳转 --%>
                    	<input name="setPageNow" type="number" class="form-control" placeholder="请输入要跳转页号">
                        <span class="input-group-btn text-right">
                            <button class="btn btn-success" type="submit">跳转</button>
                        </span>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>