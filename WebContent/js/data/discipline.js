$(document).ready(function(){
    //正常情况下早上起床时间段情况（pie)
    var riseProportionCharts=echarts.init(document.getElementById('riseProportion'));
    riseProportionCharts.setOption({
        title:{
            text:'正常情况下早上起床时间段情况',
            subtext:'所有人',
            x:'center',
            top:'85%'
        },
        tooltip : {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        legend: {
            orient:'vertical',
            x:'left',
            data:['早于7点','7-8点','8-9点','晚于9点']
        },
        toolbox: {
            right:'10%',
            show : true,
            feature : {
                mark : {show: true},
                dataView : {show: true, readOnly: false},
                magicType : {
                    show: true,
                    type: ['pie', 'funnel']
                },
                restore : {show: true},
                saveAsImage : {show: true}
            }
        },
        calculable : true,
        series:[
            {
                name:'早上起床时段情况',
                type:'pie',
                radius:[20,50],
                center : ['50%', '45%'],
                roseType:'area',//面积，可以改为半径模式：radius
                //type:'pie',
                data:[
                    {value:320, name:'早于7点'},
                    {value:936, name:'7-8点'},
                    {value:500, name:'8-9点'},
                    {value:130, name:'晚于9点'}
                ]
            }
        ]
    });
    //中午睡午觉情况
    var noontimeRestProportionCharts=echarts.init(document.getElementById('noontimeRestProportion'));
    noontimeRestProportionCharts.setOption({
        title:{
            text:'正常情况下中午睡午觉情况',
            subtext:'所有人',
            x:'center',
            top:'85%'
        },
        tooltip : {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        legend: {
            orient:'vertical',
            x:'left',
            data:['几乎不','偶尔','经常','总是']
        },
        toolbox: {
            right:'10%',
            show : true,
            feature : {
                mark : {show: true},
                dataView : {show: true, readOnly: false},
                magicType : {
                    show: true,
                    type: ['pie', 'funnel']
                },
                restore : {show: true},
                saveAsImage : {show: true}
            }
        },
        calculable : true,
        series:[
            {
                name:'睡午觉情况',
                radius:[20,50],
                center : ['50%', '45%'],
                //roseType:'area',//面积，可以改为半径模式：radius
                type:'pie',
                data:[
                    {value:270, name:'几乎不'},
                    {value:386, name:'偶尔'},
                    {value:650, name:'经常'},
                    {value:580, name:'总是'}
                ]
            }
        ]
    });
    //正常情况下晚上睡觉时间段情况
    var sleepProportionCharts=echarts.init(document.getElementById('sleepProportion'));
    sleepProportionCharts.setOption({
        title:{
            text:'正常情况下晚上睡觉时间段情况',
            subtext:'所有人',
            x:'center',
            top:'85%'
        },
        tooltip : {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        legend: {
            orient:'vertical',
            x:'left',
            data:['早于10点','10-11点','11-12点','晚于12点']
        },
        toolbox: {
            right:'10%',
            show : true,
            feature : {
                mark : {show: true},
                dataView : {show: true, readOnly: false},
                magicType : {
                    show: true,
                    type: ['pie', 'funnel']
                },
                restore : {show: true},
                saveAsImage : {show: true}
            }
        },
        calculable : true,
        series:[
            {
                name:'晚上睡觉时段',
                type:'pie',
                radius:[20,50],
                center : ['50%', '45%'],
                roseType:'radius',//面积，可以改为半径模式：area
                //type:'pie',
                data:[
                    {value:300, name:'早于10点'},
                    {value:236, name:'10-11点'},
                    {value:950, name:'11-12点'},
                    {value:400, name:'晚于12点'}
                ]
            }
        ]
    });
    //各个学院睡觉时段的人数
    var lateSleepCharts=echarts.init(document.getElementById('lateSleep'));
    lateSleepCharts.setOption({
        title:{
            text:'正常情况下各个学院晚上睡觉晚于12点的比例',
            subtext:'对应学院的所有人',
            x:'center'
        },
        tooltip: {
            trigger: 'item',
            formatter: "{b}: {c} ({d}%)"
        },
        legend: {
            orient: 'vertical',
            x: 'left',
            data:['晚于12点睡觉','早于12点睡觉']
        },
        series: [
            {
                type:'pie',
                radius: ['50%', '70%'],
                avoidLabelOverlap: false,
                label: {
                    normal: {
                        show: false,
                        position: 'center'
                    },
                    emphasis: {
                        show: true,
                        textStyle: {
                            fontSize: '30',
                            fontWeight: 'bold'
                        }
                    }
                },
                labelLine: {
                    normal: {
                        show: false
                    }
                },
                data:[
                    {value:388, name:'晚于12点睡觉'},
                    {value:66, name:'早于12点睡觉'}
                ]
            }
        ]
    });
});
