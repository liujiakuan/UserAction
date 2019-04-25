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

    <title>作息综合分析</title>

    <link rel="stylesheet" href="../../../common/bootstrapCode/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../../common/bootstrapCode/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="../../../common/bootstrapCode/css/bootstrap.css.map">
    <link rel="stylesheet" href="../../../common/bootstrapCode/css/bootstrap-theme.css.map">
    <link rel="stylesheet" href="../../../css/data/header_aside_footer.css">
    <link rel="stylesheet" href="../../../css/data/discipline.css">

    <script type="text/javascript" src="../../../common/jquery-2.0.3.min.js"></script>
    <script type="text/javascript" src="../../../common/bootstrapCode/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../../../common/bootstrapCode/js/npm.js"></script>
    <script type="text/javascript" src="../../../common/echarts.min.js"></script>
    <script type="text/javascript" src="../../../js/data/discipline.js" charset="UTF-8"></script>
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
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-4">
                        <!--所有人早上起床时间段的比例-->
                        <div id="riseProportion">
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-4">
                        <!--所有人是否有午睡习惯的比例-->
                        <div id="noontimeRestProportion">
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-4">
                        <!--所有晚上睡觉时间段比例-->
                        <div id="sleepProportion">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <div class="row margin">
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 text-center">
                                <a href="#" class="btn btn-primary btn-success" role="button">计算机学院</a>
                            </div>
                        </div>
                        <div class="row margin">
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-3 text-center">
                                <a href="#" class="btn btn-primary" role="button">大气科学学院</a>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-3 text-center">
                                <a href="#" class="btn btn-primary" role="button">资源环境学院</a>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-3 text-center">
                                <a href="#" class="btn btn-primary" role="button">应用数学</a>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-3 text-center">
                                <a href="#" class="btn btn-primary" role="button">电子工程(大气勘测)学院</a>
                            </div>
                        </div>
                        <div class="row margin">
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-3 text-center">
                                <a href="#" class="btn btn-primary" role="button">控制工程学院</a>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-3 text-center">
                                <a href="#" class="btn btn-primary" role="button">通信工程学院</a>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-3 text-center">
                                <a href="#" class="btn btn-primary" role="button">软件工程学院</a>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-3 text-center">
                                <a href="#" class="btn btn-primary" role="button">信息安全工程学院</a>
                            </div>
                        </div>
                        <div class="row margin">
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-3 text-center">
                                <a href="#" class="btn btn-primary" role="button">光电技术学院</a>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-3 text-center">
                                <a href="#" class="btn btn-primary active" role="button">管理学院</a>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-3 text-center">
                                <a href="#" class="btn btn-primary" role="button">物流学院</a>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-3 text-center">
                                <a href="#" class="btn btn-primary active" role="button">商学院</a>
                            </div>
                        </div>
                        <div class="row margin" style="margin-bottom: 30px">
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-3 text-center">
                                <a href="#" class="btn btn-primary" role="button">统计学院</a>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-3 text-center">
                                <a href="#" class="btn btn-primary" role="button">文化艺术学院</a>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-3 text-center">
                                <a href="#" class="btn btn-primary" role="button">外国语学院</a>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-3 text-center">
                                <a href="#" class="btn btn-primary" role="button">政治学院</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <!--这里计划做一个饼状图，旁边是选项列表，可以选着不同的学院，饼状图就显示不同学院对应的
                    对自己本专业的感兴趣的程度
                    -->
                        <div id="lateSleep">
                        </div>
                    </div>
                </div>
                <hr>
                <div class="row">

                </div>
                <div class="row">

                </div>
                <hr>
                <div class="row">

                </div>
                <hr>
            </div>
        </div>
    </div>

</div>
</body>
</html>