<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<header>
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container-fluid backgroundNav">
                <div class="navbar-header">
                    <div class="navbarMarginLeft"><a href="index.jsp" class="navbar-brand">成信大_学生行为调查分析系统</a></div>
                </div>
                <div class="displayNone">
                    <ul class="nav navbar-nav navbar-right navbarMarginRight">
                        <li><a href="purpose.jsp">宗旨</a></li>
                        <li><a href="#" data-toggle="modal" data-target="#setTheme">主题</a></li>
                        <li><a href="/UserAction/Quit">退出</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <!--下面是摸态框效果：设置整个页面的主题（功能实现待定，持久性待定）-->
    <div class="modal fade" id="setTheme" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                    <h4 class="modal-title" id="myModalLabel">设置主题</h4>
                </div>
                <div class="modal-body">
                    这里放的是需要设置的主题
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success">保存设置</button>
                    <button type="button" class="btn btn-info" data-dismiss="modal">关闭</button>
                </div>
            </div>
        </div>
    </div>