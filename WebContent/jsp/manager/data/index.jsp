<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
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

    <title>后台数据中心首页</title>
    
    <%--http://localhost:8080/UserAction/WebContent --%>
    <link rel="stylesheet" href="http://localhost:8080/UserAction/common/bootstrapCode/css/bootstrap.min.css">
    <link rel="stylesheet" href="http://localhost:8080/UserAction/common/bootstrapCode/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="http://localhost:8080/UserAction/common/bootstrapCode/css/bootstrap.css.map">
    <link rel="stylesheet" href="http://localhost:8080/UserAction/common/bootstrapCode/css/bootstrap-theme.css.map">
    <link rel="stylesheet" href="http://localhost:8080/UserAction/css/data/header_aside_footer.css">
    <link rel="stylesheet" href="http://localhost:8080/UserAction/css/data/index.css">

    <script type="text/javascript" src="http://localhost:8080/UserAction/common/jquery-2.0.3.min.js"></script>
    <script type="text/javascript" src="http://localhost:8080/UserAction/common/bootstrapCode/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="http://localhost:8080/UserAction/common/bootstrapCode/js/npm.js"></script>
    <script type="text/javascript" src="http://localhost:8080/UserAction/common/echarts.min.js"></script>
    <script type="text/javascript" src="http://localhost:8080/UserAction/js/data/index.js" charset="UTF-8"></script>
</head>
<body>
<script type="text/javascript">
</script>
<!--后台可视化数据查看首页-->
<!--用ajax显示右边内容-->
<div id="body">
    <!--这里是头部导航栏部分-->
    <%@ include file="header.jsp" %>
    <!--首页中间主体部分-->
    <div class="container-fluid asideMargin">
        <div class="row">
            <!--这里是内容区导航部分 -->
            <%@ include file="left.jsp" %>
            <!--内容区部分-->
            <div class="col-xs-12 col-sm-12 col-md-10 col-lg-10">
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-4">
                        <div class="text-center text-color-one bg-color-one">
                            <h2>数据总份数</h2>
                            <h3>1886</h3>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-4">
                        <div class="panel backgroundPanelOne">
                            <div class="panel-heading">
                                <h3 class="panel-title">
                                	个人得分榜
                                </h3>
                            </div>
                            <div class="panel-body panelPadding">
                                <ul class="list-group list-group-margin">
                                    <li id="no-border-radius" class="list-group-item personItem">
                                        <span class="badge">100分</span>
                                        	小刘
                                    </li>
                                    <li class="list-group-item personItem">
                                        <span class="badge">98分</span>
                                        	小杨
                                    </li>
                                    <li class="list-group-item personItem">
                                        <span class="badge">96分</span>
                                        	小曹
                                    </li>
                                    <li class="list-group-item personItem">
                                        <span class="badge">95分</span>
                                        	小李子
                                    </li>
                                    <li class="list-group-item personItem">
                                        <span class="badge">91分</span>
                                        	小建
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-4">
                        <div class="panel backgroundPanelTwo">
                            <div class="panel-heading">
                                <h3 class="panel-title">
                                	学院得分榜(平均分)
                                </h3>
                            </div>
                            <div class="panel-body panelPadding">
                                <ul class="list-group list-group-margin">
                                    <li id="no-border-radius-two" class="list-group-item collegeItem">
                                        <span class="badge">100分</span>
                                        	计算机学院
                                    </li>
                                    <li class="list-group-item collegeItem">
                                        <span class="badge">96分</span>
                                        	大气科学学院
                                    </li>
                                    <li class="list-group-item collegeItem">
                                        <span class="badge">93分</span>
                                        	资源环境学院
                                    </li>
                                    <li class="list-group-item collegeItem">
                                        <span class="badge">90分</span>
                                        	软件工程学院
                                    </li>
                                    <li class="list-group-item collegeItem">
                                        <span class="badge">88分</span>
                                        	信息安全学院
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
               <hr>
                <!--下面是各个年级填写的人数-->
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-3">
                        <span class="panel-title">大学一年级:</span>
                        <div class="progress">
                                <div class="progress-bar progress-bar-warning progress-bar-striped active" role="progressbar"
                                 aria-valuenow="45" aria-valuemin="10" aria-valuemax="400" style="width: 55%">
                                <span>男:206</span>
                            </div>
                            <div class="progress-bar progress-bar-success progress-bar-striped active" role="progressbar"
                                 aria-valuenow="45" aria-valuemin="10" aria-valuemax="400" style="width: 25%">
                                <span>女:100</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-3">
                        <span class="panel-title">大学二年级:</span>
                        <div class="progress">
                            <div class="progress-bar progress-bar-warning progress-bar-striped active" role="progressbar" aria-valuenow="45"
                                 aria-valuemin="10" aria-valuemax="400" style="width: 75%">
                                <span>男:300</span>
                            </div>
                            <div class="progress-bar progress-bar-success progress-bar-striped active" role="progressbar"
                                 aria-valuenow="45" aria-valuemin="10" aria-valuemax="400" style="width: 20%">
                                <span>女:80</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-3">
                        <span class="panel-title">大学三年级:</span>
                        <div class="progress">
                            <div class="progress-bar progress-bar-warning progress-bar-striped active" role="progressbar" aria-valuenow="45"
                                 aria-valuemin="10" aria-valuemax="400" style="width: 67.5%">
                                <span>男:270</span>
                            </div>
                            <div class="progress-bar progress-bar-success progress-bar-striped active" role="progressbar"
                                 aria-valuenow="45" aria-valuemin="10" aria-valuemax="400" style="width: 22.5%">
                                <span>女:90</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-3">
                        <span class="panel-title">大学四年级:</span>
                        <div class="progress">
                            <div class="progress-bar progress-bar-warning progress-bar-striped active" role="progressbar" aria-valuenow="45"
                                 aria-valuemin="10" aria-valuemax="400" style="width: 20%">
                                <span>男:80</span>
                            </div>
                            <div class="progress-bar progress-bar-success progress-bar-striped active" role="progressbar"
                                 aria-valuenow="45" aria-valuemin="10" aria-valuemax="400" style="width: 15%">
                                <span>女:60</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-4">
                        <span class="panel-title">研究生一年级:</span>
                        <div class="progress">
                            <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="45"
                                 aria-valuemin="10" aria-valuemax="400" style="width: 50%">
                                <span>男:200</span>
                            </div>
                            <div class="progress-bar progress-bar-success progress-bar-striped active" role="progressbar"
                                 aria-valuenow="45" aria-valuemin="10" aria-valuemax="400" style="width: 15%">
                                <span>女:60</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-4">
                        <span class="panel-title">研究生二年级:</span>
                        <div class="progress">
                            <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="45"
                                 aria-valuemin="10" aria-valuemax="400" style="width: 37.5%">
                                <span>男:150</span>
                            </div>
                            <div class="progress-bar progress-bar-success progress-bar-striped active" role="progressbar"
                                 aria-valuenow="45" aria-valuemin="10" aria-valuemax="400" style="width: 20%">
                                <span>女:80</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-4">
                        <span class="panel-title">研究生三年级:</span>
                        <div class="progress">
                            <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="45"
                                 aria-valuemin="10" aria-valuemax="400" style="width: 37.5%">
                                <span>男:150</span>
                            </div>
                            <div class="progress-bar progress-bar-success progress-bar-striped active" role="progressbar"
                                 aria-valuenow="45" aria-valuemin="10" aria-valuemax="400" style="width: 15%">
                                <span>女:60</span>
                            </div>
                        </div>
                    </div>
                </div>
                <hr>
                <div class="row">
                	<div class="col-xs-12 col-sm-12 col-md-6 col-lg-4">
                        <div id="proportionManWoman" class="proportion">
                            <!--这块区域是男女比例图-->
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-8">
                        <div id="proportionCollege" class="proportion">
                            <!--这块区域是学院填写人数比例图-->
                        </div>
                    </div>
                </div>
                <hr>
            </div>
        </div>
    </div>
</div>
</body>
</html>