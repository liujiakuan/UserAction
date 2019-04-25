$(document).ready(function(){
    var aveScoreCharts=echarts.init(document.getElementById('aveScore'));
    aveScoreCharts.setOption({
        title:{
            text:'各个学院平均得分情况',
            x:'left'
        },
        color:['#6F2E81','#08DB83','#BC3B3B'],
        tooltip : {
            trigger: 'axis',
            axisPointer : {
                type : 'shadow'
            }
        },
        toolbox:{
            show:true,
            right:'10%',
            orient:'horizontal',
            itemSize:15,
            showTitle:true,
            feature:{
                mark:{
                    show:true
                },
                dataZoom:{
                    show:true
                },
                dataView:{
                    show:true,
                    readOnly:false
                },
                magicType : {
                    show: true,
                    type: ['line', 'bar','']
                },
                restore : {
                    show: true
                },
                saveAsImage : {
                    show: true
                }
            }
        },
        grid: {//有这个属性代表填满整个表格
            left: '3%',
            right: '4%',
            bottom: '30%',
            containLabel: true
        },
        xAxis : {
            type : 'category',
            data : ['计算机学院', '大气科学学院', '资源环境学院', '应用数学学院', '电子工程学院（大气探测学院）',
                '控制工程学院', '通信工程学院','软件工程学院','信息安全工程学院','光电技术学院',
                '管理学院','物流学院','商学院','统计学院','文化艺术学院','外国语学院','政治学院'],
            axisLabel : {
                show:true,
                interval: 0,
                rotate: -70,
                margin: 8,
                formatter: '{value}'
            },
            axisTick: {
                alignWithLabel: true
            }
        },
        yAxis : {
            type : 'value'
        },
        legend:{
            orient:'horizontal',
            align:'auto',
            data:['男:平均得分','女:平均得分','学院总平均得分']
        },
        series : [
            {
                name:'男:平均得分',
                type:'bar',
                barWidth: '10%',
                lable:{
                    normal: {
                        show: true,
                        position: 'insideRight'
                    }
                },
                data:[88,78,56,72,86,90,67,77,60,79,85,89,91,90,84,91,90]
            },
            {
                name:'女:平均得分',
                type:'bar',
                barWidth: '10%',
                lable:{
                    normal: {
                        show: true,
                        position: 'insideRight'
                    }
                },
                data:[96,86,64,80,94,98,75,85,68,87,93,97,99,98,92,99,98]
            },
            {
                name:'学院总平均得分',
                type:'bar',
                barWidth: '10%',
                lable:{
                    normal: {
                        show: true,
                        position: 'insideRight'
                    }
                },
                data:[92,82,60,76,90,94,71,81,64,83,89,93,95,94,88,95,94]
            }
        ]
    });
});
