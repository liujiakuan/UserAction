$(document).ready(function(){
    //这里随机产生各个标签的颜色
    var tgbs=$('#tab p');
    tgbs.each(function(){
        var x=12;
        var y=1;
        var rand=parseInt(Math.random()*(x-y+1)+y);
        $(this).css("text-align","center").addClass("tags"+rand);
    });
    //这里用来放自我多维分析的雷达图
    var myselfVariousAspectsCharts=echarts.init(document.getElementById("myselfVariousAspects"));
    myselfVariousAspectsCharts.setOption({
        title:{
            text:'最帅的刘先生',
            x:'center'
        },
        tooltip: {

        },
        legend:{
            data:['刘先生'],
            x:'left'
        },
        radar:{
            indicator:[
                {
                    name:'潜力值',
                    max:100
                },
                {
                    name:'颜值',
                    max:100
                },
                {
                    name:'财富值',
                    max:100
                },
                {
                    name:'智力值',
                    max:100
                },
                {
                    name:'作息得分',
                    max:100
                },
                {
                    name:'学习得分',
                    max:100
                },
                {
                    name:'锻炼得分',
                    max:100
                }
            ]
        },
        series:[{
            name:'刘先生全方位展示',
            type:'radar',
            areaStyle: {
                normal: {

                }
            },
            data:[
                {
                    name:'刘先生',
                    value:[95,60,40,90,85,59,85]
                }
            ]
        }]
    });
});
