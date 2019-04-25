$(document).ready(function(){
    $('.trHover').hover(function(){
        $(this).css("background-color","antiquewhite");
    },function(){
        $(this).css("background-color","white");
        });
    
    //设置当前页号高亮
    var pageNowId=$(".pageUl li a");
	var pageUl=$(".pageUl li a").length;
	for(var i=0;i<pageUl;i++){
		if(pageNowId[i].innerHTML==getCookie("pageNowCookie")){
			pageNowId[i].setAttribute('class','btn-success');
		}
	}
});
//获取指定cookie
function getCookie(cookieName) {
    var strCookie = document.cookie;
    var arrCookie = strCookie.split("; ");
    for(var i = 0; i < arrCookie.length; i++){
        var arr = arrCookie[i].split("=");
        if(cookieName == arr[0]){
            return arr[1];
        }
    }
    return "";
}