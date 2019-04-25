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

    <title>自我综合分析</title>

    <link rel="stylesheet" href="../../../common/bootstrapCode/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../../common/bootstrapCode/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="../../../common/bootstrapCode/css/bootstrap.css.map">
    <link rel="stylesheet" href="../../../common/bootstrapCode/css/bootstrap-theme.css.map">
    <link rel="stylesheet" href="../../../css/data/header_aside_footer.css">
    <link rel="stylesheet" href="../../../css/data/myself.css">

    <script type="text/javascript" src="../../../common/jquery-2.0.3.min.js"></script>
    <script type="text/javascript" src="../../../common/bootstrapCode/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../../../common/bootstrapCode/js/npm.js"></script>
    <script type="text/javascript" src="../../../common/echarts.min.js"></script>
    <script type="text/javascript" src="../../../js/data/myself.js" charset="UFT-8"></script>
</head>
<body>
<!--后台可视化数据查看首页-->
<!--用ajax显示右边内容-->
<div id="body">
    <!--头部导航栏-->
    <%@ include file="header.jsp" %>
    <!--首页中间主体部分-->
    <div class="container-fluid asideMargin">
        <div class="row">
        <!--这里是内容区导航部分 -->
            <%@ include file="left.jsp" %>
            <!--内容区部分-->
            <div class="col-xs-12 col-sm-12 col-md-10 col-lg-10">
                <div id="tab" class="row">
                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-3">
                        <p>恋爱ing</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-5">
                        <p>健身</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-4">
                        <p>21世纪优质男青年</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-2">
                        <p>奋斗ing</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-3">
                        <p>音乐</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-4">
                        <p>看书</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-2">
                        <p>游泳</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-3">
                        <p>学习</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-5">
                        <p>篮球</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-3">
                        <p>斯诺克</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-2">
                        <p>做饭</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-5">
                        <p>电影</p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-4 col-lg-offset-2">
                        <p>旅行</p>
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-3">
                        <img src="../../../img/wordsCloud.png" alt="最帅的刘先生" class="img-responsive">
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-3 marginTop">
                        <!--每周锻炼时长-->
                        <h3>平均每周锻炼时长</h3>
                        <div class="progress">
                            <div class="progress-bar progress-bar-striped active progress-bar-info" role="progressbar" aria-valuenow="8" aria-valuemin="0" aria-valuemax="10" style="width: 80%">
                                <span>8小时</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-3 marginTop">
                        <!--每周课外学习时长-->
                        <h3>平均每周课外学习时长</h3>
                        <div class="progress">
                            <div class="progress-bar progress-bar-striped active progress-bar-danger" role="progressbar" aria-valuenow="14" aria-valuemin="0" aria-valuemax="20" style="width: 70%">
                                <span>14小时</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-3 marginTop">
                        <!--每周打游戏时长-->
                        <h3>平均每周玩游戏时长</h3>
                        <div class="progress">
                            <div class="progress-bar progress-bar-striped active progress-bar-success" role="progressbar" aria-valuenow="12" aria-valuemin="0" aria-valuemax="20" style="width: 60%">
                                <span>12小时</span>
                            </div>
                        </div>
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-8 col-lg-offset-2">
                        <!--这里用来放自我多维分析的雷达图-->
                        <div id="myselfVariousAspects">

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