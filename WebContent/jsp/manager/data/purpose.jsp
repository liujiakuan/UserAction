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

    <title>文化宗旨</title>

    <link rel="stylesheet" href="../../../common/bootstrapCode/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../../common/bootstrapCode/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="../../../common/bootstrapCode/css/bootstrap.css.map">
    <link rel="stylesheet" href="../../../common/bootstrapCode/css/bootstrap-theme.css.map">
    <link rel="stylesheet" href="../../../css/data/header_aside_footer.css">
    <link rel="stylesheet" href="../../../css/data/purpose.css">

    <script type="text/javascript" src="../../../common/jquery-2.0.3.min.js"></script>
    <script type="text/javascript" src="../../../common/bootstrapCode/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../../../common/bootstrapCode/js/npm.js"></script>
    <script type="text/javascript" src="../../../js/data/purpose.js"></script>
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
                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3">
                        <div class="thumbnail">
                            <img src="../../../img/cute3.jpg" class="img-responsive img-circle" alt="最帅的刘先生">
                            <div class="caption">
                                <p class="center">
                                    <a href="#showIfoOne" class="btn btn-primary" role="button" data-toggle="collapse"
                                       data-parent="#accordion" aria-controls="showIfoOne" aria-expanded="true">
                                        	了解他
                                    </a>
                                </p>
                                <div id="showIfoOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="#">
                                    <div class="panel-body">
                                       	 性别：男
                                        <br>
                                        	爱好：女
                                        <br>
                                        	篮球、乒乓球、羽毛球、游泳、斯诺克、健身
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3">
                        <div class="thumbnail">
                            <img src="../../../img/cute3.jpg" class="img-responsive img-circle" alt="最帅的曹先生">
                            <div class="caption">
                                <p class="center">
                                    <a href="#showIfoTwo" class="btn btn-primary" role="button" data-toggle="collapse"
                                       data-parent="#accordion" aria-controls="showIfoTwo" aria-expanded="true">
                                        	了解他
                                    </a>
                                </p>
                                <div id="showIfoTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="#">
                                    <div class="panel-body">
                                        	性别：男
                                        <br>
                                        	爱好：女
                                        <br>
                                        	篮球、乒乓球、羽毛球、游泳、斯诺克、健身
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3">
                        <div class="thumbnail">
                            <img src="../../../img/cute3.jpg" class="img-responsive img-circle" alt="李杰儿子">
                            <div class="caption">
                                <p class="center">
                                    <a href="#showIfoThree" class="btn btn-primary" role="button" data-toggle="collapse"
                                       data-parent="#accordion" aria-controls="showIfoThree" aria-expanded="true">
                                        	了解他
                                    </a>
                                </p>
                                <div id="showIfoThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="#">
                                    <div class="panel-body">
                                        	性别：男
                                        <br>
                                        	爱好：女
                                        <br>
                                        	篮球、乒乓球、羽毛球、游泳、斯诺克、健身
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3">
                        <div class="thumbnail">
                            <img src="../../../img/cute3.jpg" class="img-responsive img-circle" alt="魏建儿子">
                            <div class="caption">
                                <p class="center">
                                    <a href="#showIfoFour" class="btn btn-primary" role="button" data-toggle="collapse"
                                       data-parent="#accordion" aria-controls="showIfoFour" aria-expanded="true">
                                        	了解他
                                    </a>
                                </p>
                                <div id="showIfoFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="#">
                                    <div class="panel-body">
                                        	性别：男
                                        <br>
                                        	爱好：女
                                        <br>
                                        	篮球、乒乓球、羽毛球、游泳、斯诺克、健身
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-6 col-md-offset-3  col-lg-6 col-lg-offset-3">
                        <h2>
                            	我们的宗旨是:Hello World。
                        </h2>
                        <p>
                            	当我们被提bug之后的反应:<br>
                            &nbsp;&nbsp;1.怎么可能<br>
                            &nbsp;&nbsp;2.在我这是好的，不信你来看看<br>
                            &nbsp;&nbsp;3.真是奇怪，刚刚还好好的<br>
                            &nbsp;&nbsp;4.肯定是数据问题<br>
                            &nbsp;&nbsp;5.你清下缓存试试<br>
                            &nbsp;&nbsp;6.重启下电脑试试<br>
                            &nbsp;&nbsp;7.你装的什么版本的类库（jdk）<br>
                            &nbsp;&nbsp;8.这谁写的代码<br>
                            &nbsp;&nbsp;9.尼玛怎么还在用360安全 浏览器 <br>
                            &nbsp;&nbsp;10.用户不会像你这么操作的。<br>
                        </p>
                        <p>
                            	我们经常熬夜，但是也会出现问题：<br>
                            &nbsp;&nbsp;第一，记忆力越来越差<br>
                            &nbsp;&nbsp;第二，数数经常会数错<br>
                            &nbsp;&nbsp;第四，记忆力越来越差。
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
</body>
</html>