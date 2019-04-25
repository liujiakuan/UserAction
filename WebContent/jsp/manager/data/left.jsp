<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <script type="text/javascript" src="../../../js/data/header_left_footer.js"></script>
			<div class="col-xs-12 col-sm-12 col-md-2 col-lg-2">
                <!--这里是下拉框-->
                <div class="input-group">
                    <input type="text" class="form-control">
                    <div class="input-group-btn">
                        <button type="button" class="btn btn-info">搜索</button>
                    </div>
                </div>
                <!--这里是侧边栏下拉折叠列表导航-->
                <div class="panel-group" id="accordion">
                    <div class="panel panel-danger marginTop">
                        <div class="panel-heading text-center"  data-toggle="collapse" data-target="#collapseOne">
                        	生活分析
                        </div>
                        <div id="collapseOne" class="panel-collapse collapse">
                            <div class="panel-body panelPadding">
                                <div class="list-group list-group-margin text-center">
                                    <a href="loveAnalysis.jsp" class="list-group-item leftItem">
                             		           恋爱分析
                                    </a>
                                    <a href="lifeAnalysis.jsp" class="list-group-item leftItem">
                                    	生活综合分析
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-danger marginTop">
                        <div class="panel-heading text-center"  data-toggle="collapse" data-target="#collapseTwo">
                          	 学习分析
                        </div>
                        <div id="collapseTwo" class="panel-collapse collapse">
                            <div class="panel-body panelPadding">
                                <div class="list-group list-group-margin text-center">
                                    <a href="studyAnalysis.jsp" class="list-group-item leftItem">
                                       	 学习综合分析
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-danger marginTop">
                        <div class="panel-heading text-center"  data-toggle="collapse" data-target="#collapseThree">
                        	作息分析
                        </div>
                        <div id="collapseThree" class="panel-collapse collapse">
                            <div class="panel-body panelPadding">
                                <div class="list-group list-group-margin text-center">
                                    <a href="discipline.jsp" class="list-group-item leftItem">
                                    	作息综合分析
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-danger marginTop">
                        <div class="panel-heading text-center"  data-toggle="collapse" data-target="#collapseFour">
                        	评分分析
                        </div>
                        <div id="collapseFour" class="panel-collapse collapse">
                            <div class="panel-body panelPadding">
                                <div class="list-group list-group-margin text-center">
                                   <a href="scoreAnalysis.jsp" class="list-group-item leftItem">
                                        	得分综合分析
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-danger marginTop">
                        <div class="panel-heading text-center"  data-toggle="collapse" data-target="#collapseFive">
                            	自我分析
                        </div>
                        <div id="collapseFive" class="panel-collapse collapse">
                            <div class="panel-body panelPadding">
                                <div class="list-group list-group-margin text-center">
                                    <a href="myself.jsp" class="list-group-item leftItem">
                                        	自我综合分析
                                    </a>
                                    <a href="#" class="list-group-item leftItem">
                                        	更多（增强课扩展性）
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>