$(document).ready(function(){
	$("#loginCheckCode").click(function(){
		$(this).attr('src',"checkCode.jsp?"+Math.random());
	});
	$("#registerCheckCode").click(function(){
		$(this).attr('src',"checkCode.jsp?"+Math.random());
	});
	
});