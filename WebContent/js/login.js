//前端验证管理员登录时候符合某些规定，如果不符合在前端验证的时候就结束，不向后台
//发送请求，为后台减轻压力

$(document).ready(function(){
	$('#loginForm').submit(function(e){
		var name=$('#userName').val();
		var password=$('#password').val();
		//如果用户名、密码验证失败，就阻止表单提交
		if($.check.checkName(name)==true&&$.check.checkPassword(password)==true){
			$('#errorLogin').css("display","none");
		}
		else{
			$('#errorLogin').css("display","block");
			e.preventDefault();
			return false;
		}
	});
});
$.check={
		checkName:function(name){//用户名匹配字符、数字、下划线、中文:6到10位
			var isMatch=name.match("^[a-zA-Z0-9_\u4e00-\u9fa5]{6,10}$");
			if(isMatch!=null){//成功
				
				return true;
			}
			else{//失败
				
                return false;
			}
		},
		checkPassword:function(password){
			var isMatch=password.match("^[a-zA-Z0-9_]{6,10}$");//密码匹配字符、数字、下划线、:6到10位
			if(isMatch!=null){//成功
				
				return true;
			}
			else{//失败
				
				return false;
			}
		}
}