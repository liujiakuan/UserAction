$(document).ready(function(){
    //总共人数的单身比例图表显示--处理包含统计图形的高度,使其宽高一样
    var allSingleProportionHeight=$('#allSingleProportion');
    allSingleProportionHeight.css('height',allSingleProportionHeight.width());
    //总共人数的单身比例图表显示
    var allSingleProportionCharts=echarts.init(document.getElementById('allSingleProportion'));
    allSingleProportionCharts.setOption({
        title:{
            text:'总共人数单身比例',
            x:'center'
        },
        tooltip:{
            trigger:'item',
            formatter:"{a}<br/>{b}:{c}({d}%)"
        },
        legend:{
            orient:'vertical',
            x:'left',
            data:['男:单身占比','男:非单身占比','女:单身占比','女:非单身占比']
        },
        series:[
            {
                name:'妹子',
                type:'pie',
                selectedMode: 'single',
                radius: [0, '30%'],
                label:{
                    normal:{
                        position:'inner'
                    }
                },
                labelLine: {
                    normal: {
                        show: false
                    }
                },
                data:[
                    {value:86, name:'女:单身占比'},
                    {value:500, name:'女:非单身占比'}
                ]
            },
            {
                name:'汉子',
                type:'pie',
                radius: ['40%', '55%'],

                data:[
                    {value:1000, name:'男:单身占比'},
                    {value:300, name:'男:非单身占比'}
                ]
            }
        ]
    });
    //各个年级人数的单身比例图表显示--处理包含统计图形的高度,使其宽高一样
    var gradeSingleProportionHeight=$('#gradeSingleProportion');
    gradeSingleProportionHeight.css('height',gradeSingleProportionHeight.width());
    //各个年级人数的单身比例图表显示
    var gradeSingleProportionCharts=echarts.init(document.getElementById('gradeSingleProportion'));
    gradeSingleProportionCharts.setOption({
        title:{
            text:'各个年级单身情况',
            x:'left'
        },
        color:['#127EE3','#6F2E81','#08DB83','#FF8E00','#BC3B3B'],
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
            bottom: '20%',
            containLabel: true
        },
        xAxis : {
            type : 'category',
            data : ['大学一年级', '大学二年级', '大学三年级', '大学四年级',
                '研究生一年级','研究生二年级','研究生三年级'],
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
            top:'6%',
            data:['男:单身','男:非单身','女:单身','女:非单身','总人数']
        },
        series : [
            {
                name:'男:单身',
                type:'bar',
                barWidth: '10%',
                lable:{
                    normal: {
                        show: true,
                        position: 'insideRight'
                    }
                },
                data:[166,200,170,40,90,60,40]
            },
            {
                name:'男:非单身',
                type:'bar',
                barWidth: '10%',
                lable:{
                    normal: {
                        show: true,
                        position: 'insideRight'
                    }
                },
                data:[40,100,100,40,110,90,110]
            },
            {
                name:'女:单身',
                type:'bar',
                barWidth: '10%',
                lable:{
                    normal: {
                        show: true,
                        position: 'insideRight'
                    }
                },
                data:[50,50,70,50,55,70,50]
            },
            {
                name:'女:非单身',
                type:'bar',
                barWidth: '10%',
                lable:{
                    normal: {
                        show: true,
                        position: 'insideRight'
                    }
                },
                data:[50,30,20,10,5,10,10]
            },
            {
                name:'总人数',
                type:'bar',
                barWidth: '10%',
                lable:{
                    normal: {
                        show: true,
                        position: 'insideRight'
                    }
                },
                data:[306,380,360,140,260,230,210]
            }
        ]
    });
    //各个学院人数的单身比例图表显示
    var collegeSingleProportionCharts=echarts.init(document.getElementById('collegeSingleProportion'));
    collegeSingleProportionCharts.setOption({
        title:{
            text:'各个学院单身情况',
            x:'left'
        },
        color:['#127EE3','#6F2E81','#08DB83','#FF8E00','#BC3B3B'],
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
            data:['男:单身','男:非单身','女:单身','女:非单身','总人数']
        },
        series : [
            {
                name:'男:单身',
                type:'bar',
                barWidth: '10%',
                lable:{
                    normal: {
                        show: true,
                        position: 'insideRight'
                    }
                },
                data:[120,50,46,112,150,130,140,118,145,127,47,25,41,36,60,51,49]
            },
            {
                name:'男:非单身',
                type:'bar',
                barWidth: '10%',
                lable:{
                    normal: {
                        show: true,
                        position: 'insideRight'
                    }
                },
                data:[20,100,100,40,33,42,29,37,49,35,80,110,75,90,85,90,65]
            },
            {
                name:'女:单身',
                type:'bar',
                barWidth: '10%',
                lable:{
                    normal: {
                        show: true,
                        position: 'insideRight'
                    }
                },
                data:[20,22,27,13,15,24,20,15,18,10,24,36,27,21,15,19,12]
            },
            {
                name:'女:非单身',
                type:'bar',
                barWidth: '10%',
                lable:{
                    normal: {
                        show: true,
                        position: 'insideRight'
                    }
                },
                data:[30,60,65,16,15,20,18,21,23,28,45,68,88,75,61,81,79]
            },
            {
                name:'总人数',
                type:'bar',
                barWidth: '10%',
                lable:{
                    normal: {
                        show: true,
                        position: 'insideRight'
                    }
                },
                data:[200,232,238,176,213,216,207,191,245,200,196,239,231,222,221,241,205]
            }
        ]
    });
});
