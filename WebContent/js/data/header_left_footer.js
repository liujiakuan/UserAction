$(document).ready(function(){
    $('.leftItem').hover(function(){
        $(this).css({
            backgroundColor:'#52FAB4'
        })
    },function(){
        $(this).css({
            backgroundColor:'#FFFFFF'
        });
        $('.leftItem').each(function(){
            //alert($.trim($(this).text())== $.trim($('title').text()));
            if($.trim($(this).text())== $.trim($('title').text())){
                $(this).css({
                    backgroundColor:'#52FAB4'
                });
            }
        });
    });
    $('.leftItem').each(function(){
        //alert($.trim($(this).text())== $.trim($('title').text()));
        if($.trim($(this).text())== $.trim($('title').text())){
            $(this).css({
                backgroundColor:'#52FAB4'
            });
        }
        switch ($.trim($('title').text())){
            case "恋爱分析":
                $('#collapseOne').addClass("in");
                break;
            case "生活综合分析":
                $('#collapseOne').addClass("in");
                break;
            case "学习综合分析":
                $('#collapseTwo').addClass("in");
                break;
            case "作息综合分析":
                $('#collapseThree').addClass("in");
                break;
            case "得分综合分析":
                $('#collapseFour').addClass("in");
                break;
            case "自我综合分析":
                $('#collapseFive').addClass("in");
                break;
            case "更多（增强课扩展性）":
                $('#collapseFive').addClass("in");
                break;
            default :break;

        }
    });
});
