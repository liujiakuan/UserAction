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

    <title>成信大学生行为调查分析</title>

    <link rel="stylesheet" href="../../common/bootstrapCode/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../common/bootstrapCode/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="../../common/bootstrapCode/css/bootstrap.css.map">
    <link rel="stylesheet" href="../../common/bootstrapCode/css/bootstrap-theme.css.map">
    <link rel="stylesheet" href="../../css/question.css">

    <script type="text/javascript" src="../../common/bootstrapCode/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../../common/bootstrapCode/js/npm.js"></script>
    <script type="text/javascript" src="../../common/jquery-2.0.3.min.js"></script>
    <script type="text/javascript" src="../../js/question.js"></script>

</head>
<body>
<!--学生行为调查统计页面-->
<div id="body">

    <header class="header">
        <figure>
            <img class="img-responsive headerImg" src="../../img/question_head.png" alt="HeaderImage">
            <figcaption></figcaption>
        </figure>
        <div class="container title">
            <h1 class="text-center">成都信息工程大学，学生行为、学习调查分析</h1>
            <h6 class="text-right">我们并不知道你是谁，所以不要怂，请真实填写，谢谢您的参与。</h6>
        </div>
    </header>
    <hr>

    <div id="form">
        <form id="questionForm" role="form" action="../../UserController" method="post" >
        
        <!---------------------------学号--------------------------------------->
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6 col-lg-offset-3 col-md-offset-3 col-sm-offset-3">
                        <div class="form-group">
                            <label for="studentId">
                                	请填写学号：
                            </label>
                            <input id="studentId" type="text" name="studentId" class="form-control" placeholder="请输入学号">
                        </div>
                    </div>
                </div>
            </div>
            <hr>

            <!---------------------------昵称--------------------------------------->
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6 col-lg-offset-3 col-md-offset-3 col-sm-offset-3">
                        <div class="form-group">
                            <label for="nickName">
                                	请填写昵称：
                            </label>
                            <input id="nickName" type="text" name="name" class="form-control" placeholder="请填写昵称，中文或字母，最多5个汉字或者12个字符">
                        </div>
                    </div>
                </div>
            </div>
            <hr>

            <!---------------------------性别--------------------------------------->
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-7 col-md-7 col-sm-8 col-lg-offset-5 col-md-offset-5 col-sm-offset-3">
                        <label>性别</label>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="sex" id="sex1" value="男">男
                            </label>
                        </div>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="sex" id="sex2" value="女">女
                            </label>
                        </div>
                    </div>
                </div>
            </div>
            <hr>

            <!---------------------------学院--------------------------------------->
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-7 col-md-7 col-sm-8 col-lg-offset-5 col-md-offset-5 col-sm-offset-3">
                        <label>学院</label>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="college" id="college1" value="计算机学院">计算机学院
                            </label>
                        </div>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="college" id="college2" value="大气科学学院">大气科学学院
                            </label>
                        </div>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="college" id="college3" value="资源环境学院">资源环境学院
                            </label>
                        </div>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="college" id="college4" value="应用数学学院">应用数学学院
                            </label>
                        </div>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="college" id="college5" value="电子工程学院(大气探测学院)">电子工程学院（大气探测学院）
                            </label>
                        </div>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="college" id="college6" value="控制工程学院">控制工程学院
                            </label>
                        </div>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="college" id="college7" value="通信工程学院">通信工程学院
                            </label>
                        </div>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="college" id="college8" value="软件工程学院">软件工程学院
                            </label>
                        </div>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="college" id="college9" value="信息安全工程学院">信息安全工程学院
                            </label>
                        </div>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="college" id="college10" value="光电技术学院">光电技术学院
                            </label>
                        </div>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="college" id="college11" value="管理学院">管理学院
                            </label>
                        </div>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="college" id="college12" value="物流学院">物流学院
                            </label>
                        </div>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="college" id="college13" value="商学院">商学院
                            </label>
                        </div>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="college" id="college14" value="统计学院">统计学院
                            </label>
                        </div>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="college" id="college15" value="文化艺术学院">文化艺术学院
                            </label>
                        </div>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="college" id="college16" value="外国语学院">外国语学院
                            </label>
                        </div>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="college" id="college17" value="政治学院">政治学院
                            </label>
                        </div>
                    </div>
                </div>
            </div>
           <hr>

            <!---------------------------年级--------------------------------------->
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-7 col-md-7 col-sm-8 col-lg-offset-5 col-md-offset-5 col-sm-offset-3">
                        <label>年级</label>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="grade" id="grade1" value="大学一年级">大学一年级
                            </label>
                        </div>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="grade" id="grade2" value="大学二年级">大学二年级
                            </label>
                        </div>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="grade" id="grade3" value="大学三年级">大学三年级
                            </label>
                        </div>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="grade" id="grade4" value="大学四年级">大学四年级
                            </label>
                        </div>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="grade" id="grade5" value="研究生一年级">研究生一年级
                            </label>
                        </div>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="grade" id="grade6" value="研究生二年级">研究生二年级
                            </label>
                        </div>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="grade" id="grade7" value="研究生三年级">研究生三年级
                            </label>
                        </div>
                    </div>
                </div>
            </div>
           <hr>

            <!-------------------------是否单身------------------------------------------>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-7 col-md-7 col-sm-8 col-lg-offset-5 col-md-offset-5 col-sm-offset-3">
                        <label>是否单身</label>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="love" id="love1" value="yes">是
                            </label>
                        </div>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="love" id="love2" value="no">否
                            </label>
                        </div>
                    </div>
                </div>
            </div>
            <hr>

            <!-------------------------早上几点起床------------------------------------------>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-7 col-md-7 col-sm-8 col-lg-offset-5 col-md-offset-5 col-sm-offset-3">
                        <label>早上一般什么时间段起床</label>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="rise" id="rise1" value="beforeSeven">早于7点
                            </label>
                        </div>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="rise" id="rise2" value="sevenToEight">7-8点
                            </label>
                        </div>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="rise" id="rise3" value="eightToNine">8-9点
                            </label>
                        </div>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="rise" id="rise4" value="afterNine">晚于9点
                            </label>
                        </div>
                    </div>
                </div>
            </div>
            <hr>

            <!-------------------------是否有睡午觉的习惯------------------------------------------>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-7 col-md-7 col-sm-8 col-lg-offset-5 col-md-offset-5 col-sm-offset-3">
                        <label>是否有睡午觉的习惯</label>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="afternoonNap" id="afternoonNap1" value="always">总是
                            </label>
                        </div>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="afternoonNap" id="afternoonNap2" value="often">经常
                            </label>
                        </div>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="afternoonNap" id="afternoonNap3" value="occasionally">偶尔
                            </label>
                        </div>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="afternoonNap" id="afternoonNap4" value="hardly">几乎不
                            </label>
                        </div>
                    </div>
                </div>
            </div>
            <hr>

            <!-------------------------晚上一般几点睡觉------------------------------------------>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-7 col-md-7 col-sm-8 col-lg-offset-5 col-md-offset-5 col-sm-offset-3">
                        <label>晚上一般什么时间段睡觉</label>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="sleep" id="sleep1" value="beforeTwentyTwo">早于22点
                            </label>
                        </div>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="sleep" id="sleep2" value="twentyTwoTOTweentyThree">22-23点
                            </label>
                        </div>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="sleep" id="sleep3" value="tweentyThreeToTweentyFour">23-24点
                            </label>
                        </div>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="sleep" id="sleep4" value="afterTweentyFour">晚于24点
                            </label>
                        </div>
                    </div>
                </div>
            </div>
            <hr>

            <!-------------------------上课玩手机或者睡觉的频率------------------------------------------>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-7 col-md-7 col-sm-8 col-lg-offset-5 col-md-offset-5 col-sm-offset-3">
                        <label>上课玩手机或者睡觉的频率</label>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="playPhone" id="playPhone1" value="hardly">几乎不
                            </label>
                        </div>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="playPhone" id="playPhone2" value="occasionally">偶尔
                            </label>
                        </div>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="playPhone" id="playPhone3" value="often">经常
                            </label>
                        </div>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="playPhone" id="playPhone4" value="always">总是
                            </label>
                        </div>
                    </div>
                </div>
            </div>
            <hr>

            <!-------------------------一周一般逃几次课------------------------------------------>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-7 col-md-7 col-sm-8 col-lg-offset-5 col-md-offset-5 col-sm-offset-3">
                        <label>每周一般逃几次课</label>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="playTruant" id="playPhone1" value="zero">0次
                            </label>
                        </div>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="playTruant" id="playPhone2" value="oneToThree">1-3次
                            </label>
                        </div>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="playTruant" id="playPhone3" value="fourToSix">4-6次
                            </label>
                        </div>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="playTruant" id="playPhone4" value="overSix">大于6次
                            </label>
                        </div>
                    </div>
                </div>
            </div>
            <hr>

            <!-------------------------每周一般去几次图书馆------------------------------------------>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-7 col-md-7 col-sm-8 col-lg-offset-5 col-md-offset-5 col-sm-offset-3">
                        <label>每周一般去几次图书馆</label>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="library" id="library1" value="zero">0次
                            </label>
                        </div>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="library" id="library2" value="oneToThree">1-3次
                            </label>
                        </div>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="library" id="library3" value="fourToSix">4-6次
                            </label>
                        </div>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="library" id="library4" value="overSix">大于6次
                            </label>
                        </div>
                    </div>
                </div>
            </div>
            <hr>
            
            <!-------------------------是否对自己所读专业感兴趣------------------------------------------>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-7 col-md-7 col-sm-8 col-lg-offset-5 col-md-offset-5 col-sm-offset-3">
                        <label>是否对自己所读专业感兴趣</label>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="majorTaste" id="majorTaste1" value="veryInterested">非常感兴趣
                            </label>
                        </div>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="majorTaste" id="majorTaste2" value="kindInterested">一般感兴趣
                            </label>
                        </div>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="majorTaste" id="majorTaste3" value="notInterested">不怎么感兴趣
                            </label>
                        </div>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="majorTaste" id="majorTaste4" value="veryNotInterested">非常不感兴趣
                            </label>
                        </div>
                    </div>
                </div>
            </div>
            <hr>
            
            <!-------------------------每周一般花费多少时间用于课外学习------------------------------------------>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-3 col-md-7 col-sm-8 col-lg-offset-5 col-md-offset-5 col-sm-offset-3">
                        <label for="elseStudy">每周一般花费多少时间用于课外学习（单位：小时）</label>
                        <select id="elseStudy" name="elseStudy" class="form-control text-center">
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                            <option>6</option>
                            <option>7</option>
                            <option>8</option>
                            <option>9</option>
                            <option>10</option>
                            <option>11</option>
                            <option>12</option>
                            <option>13</option>
                            <option>14</option>
                            <option>15</option>
                            <option>16</option>
                            <option>17</option>
                            <option>18</option>
                            <option>19</option>
                            <option>20</option>
                            <option>21</option>
                            <option>22</option>
                            <option>23</option>
                            <option>24</option>
                            <option>25</option>
                            <option>26</option>
                            <option>27</option>
                            <option>28</option>
                            <option>29</option>
                            <option>30</option>
                            <option>31</option>
                            <option>32</option>
                            <option>33</option>
                            <option>34</option>
                            <option>35</option>
                            <option>35</option>
                            <option>37</option>
                            <option>38</option>
                            <option>39</option>
                            <option>40</option>
                            <option disabled="disabled">超过40,就请选择40.</option>
                            <%--以后这里可以设置为填写用户自己填写 --%>
                        </select>
                    </div>
                </div>
            </div>
            <hr>

            <!-------------------------每周大概锻炼多少小时------------------------------------------>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-3 col-md-7 col-sm-8 col-lg-offset-5 col-md-offset-5 col-sm-offset-3">
                        <label for="exerciseTime">每周大概锻炼多少时间（单位：小时）</label>
                        <select id="exerciseTime" name="exerciseTime" class="form-control text-center">
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                            <option>6</option>
                            <option>7</option>
                            <option>8</option>
                            <option>9</option>
                            <option>10</option>
                            <option>11</option>
                            <option>12</option>
                            <option>13</option>
                            <option>14</option>
                            <option>15</option>
                            <option disabled="disabled">超过15,就请选择15.</option>
                            <%--以后这里可以设置为填写用户自己填写 --%>
                        </select>
                    </div>
                </div>
            </div>
            <hr>

            <!-------------------------每周大约花多少时间打游戏------------------------------------------>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-3 col-md-7 col-sm-8 col-lg-offset-5 col-md-offset-5 col-sm-offset-3">
                        <label for="playGame">每周大约花多少时间打游戏（单位：小时）</label>
                        <select id="playGame" name="playGame" class="form-control text-center">
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                            <option>6</option>
                            <option>7</option>
                            <option>8</option>
                            <option>9</option>
                            <option>10</option>
                            <option>11</option>
                            <option>12</option>
                            <option>13</option>
                            <option>14</option>
                            <option>15</option>
                            <option>16</option>
                            <option>17</option>
                            <option>18</option>
                            <option>19</option>
                            <option>20</option>
                            <option>21</option>
                            <option>22</option>
                            <option>23</option>
                            <option>24</option>
                            <option>25</option>
                            <option>26</option>
                            <option>27</option>
                            <option>28</option>
                            <option>29</option>
                            <option>30</option>
                            <option disabled="disabled">超过30,就请选择30.</option>
                            <%--以后这里可以设置为填写用户自己填写 --%>
                        </select>
                    </div>
                </div>
            </div>
            <hr>
            <!-------------------------学习成绩大概排在班上什么名次------------------------------------------>
            <%--
             <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-7 col-md-7 col-sm-8 col-lg-offset-5 col-md-offset-5 col-sm-offset-3">
                        <label>结合实际，自我真实感觉学习成绩大概排在班上什么名次</label>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="rank" id="rank1" value="rank1">1-10名之间
                            </label>
                        </div>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="rank" id="rank2" value="rank2">11-20名之间
                            </label>
                        </div>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="rank" id="rank3" value="rank3">21-30名之间
                            </label>
                        </div>
                        <div class="radio">
                            <label class="radio-inline">
                                <input type="radio" name="rank" id="rank4" value="rank4">30名之后
                            </label>
                        </div>
                    </div>
                </div>
            </div>
            <hr>
             --%>

            <!---------------------------验证是否符合要求，符合要求就允许提交，否否不允许提交-->
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <div id="errorName" class="alert alert-danger text-center" role="alert">昵称非法，请检查（非空，中文不能超过5个，英文字符不能超过12个）</div>
                    </div>
                </div>
            </div>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <div id="errorAllOption" class="alert alert-danger text-center" role="alert">题目没有填完,请检查完善。</div>
                    </div>
                </div>
            </div>
            <hr>
            <!-------------------------提交表单内容--------------------->
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-4 col-lg-offset-5 col-md-offset-5 col-sm-offset-5">
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <button type="submit" class="btn btn-success">提交</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <hr>
            
        </form>
    </div>

</div>
</body>
</html>