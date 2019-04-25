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

    <title>生活综合分析</title>

    <link rel="stylesheet" href="../../../common/bootstrapCode/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../../common/bootstrapCode/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="../../../common/bootstrapCode/css/bootstrap.css.map">
    <link rel="stylesheet" href="../../../common/bootstrapCode/css/bootstrap-theme.css.map">
    <link rel="stylesheet" href="../../../css/data/header_aside_footer.css">
    <link rel="stylesheet" href="../../../css/data/lifeAnalysis.css">

    <script type="text/javascript" src="../../../common/jquery-2.0.3.min.js"></script>
    <script type="text/javascript" src="../../../common/bootstrapCode/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../../../common/bootstrapCode/js/npm.js"></script>
    <script type="text/javascript" src="../../../common/echarts.min.js"></script>
    <script type="text/javascript" src="../../../js/data/lifeAnalysis.js" charset="UTF-8"></script>
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
                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                        <!--所有人锻炼的时段的比例-->
                        <div id="allExerciseProportion">
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                        <!--所有人打游戏的时段的比例-->
                        <div id="allPlayGameProportion">
                        </div>
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <!--各个学院所有人锻炼花费时间和打游戏花费时间三维数据显示（散点图）-->
                        <div id="collegeExercisePlayGameProportion">
                        </div>
                    </div>
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