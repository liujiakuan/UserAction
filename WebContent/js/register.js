//前端验证管理员注册时候符合某些规定，如果不符合在前端验证的时候就结束，不向后台
//发送请求，为后台减轻压力

$(document).ready(function(){
	$('#registerForm').submit(function(e){
		var name=$('#userName').val();
		var password=$('#password').val();
		var repeatPassword=$('#repeatPassword').val();
		//如果用户名、密码验证失败，就阻止表单提交
		
		//如果前端js通过验证就跳转到一个控制器验证session验证码，如果控制器验证不成功就返回到本页面，并传递一个值
		//用于jsp页面的接收，告诉用户验证码不对
		if($.check.checkName(name)==true&&$.check.checkPassword(password)==true&&$.check.checkPassword(repeatPassword)==true){
			if(password==repeatPassword){
				$('#errorRegister').css("display","none");
			}
			else{
				$('#errorRegister').css("display","block");
				e.preventDefault();
				return false;
			}
		}
		else{
			$('#errorRegister').css("display","block");
			e.preventDefault();
			return false;
		}
	});
	
});
$.check={
		checkName:function(name){//用户名匹配字符、数字、下划线、中文:6到10位
			var isMatch=name.match("^[a-zA-Z0-9_\u4e00-\u9fa5]{6,10}$");
			if(isMatch!=null){//匹配名字成功
				
				return true;
			}
			else{//匹配名字失败
				
                return false;
			}
		},
		checkPassword:function(password){//密码匹配字符、数字、下划线、:6到10位
			var isMatch=password.match("^[a-zA-Z0-9_]{6,10}$");
			if(isMatch!=null){//匹配密码成功
				
				return true;
			}
			else{//匹配密码失败
				
				return false;
			}
		}
}