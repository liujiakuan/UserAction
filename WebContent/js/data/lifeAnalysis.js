$(document).ready(function(){
    //总共人数锻炼时段--处理包含统计图形的高度,使其宽高一样
    var allExerciseProportionHeight=$('#allExerciseProportion');
    allExerciseProportionHeight.css('height',allExerciseProportionHeight.width());
    //总共人数锻炼时段比例图表显示(饼状图)
    var allExerciseProportionCharts=echarts.init(document.getElementById('allExerciseProportion'));
    allExerciseProportionCharts.setOption({
        title:{
            text:'每周锻炼时长占比',
            x:'center'
        },
        tooltip : {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        legend: {
            orient:'vertical',
            x:'left',
            data:['0-3.5小时','3.5-7小时','7-10.5小时','10.5-14小时','大于14小时']
        },
        toolbox: {
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
                name:'每周锻炼时长',
                type:'pie',
                radius:[20,110],
                center : ['50%', '50%'],
                roseType:'radius',//半径模式，可以改为面积模式：area
                label: {
                    normal: {
                        show: true
                    },
                    emphasis: {
                        show: true
                    }
                },
                lableLine: {
                    normal: {
                        show: false
                    },
                    emphasis: {
                        show: true
                    }
                },
                data:[
                    {value:300, name:'0-3.5小时'},
                    {value:686, name:'3.5-7小时'},
                    {value:500, name:'7-10.5小时'},
                    {value:250, name:'10.5-14小时'},
                    {value:150, name:'大于14小时'}
                ]
            }
        ]
    });

    //总共人数玩游戏花费时间时段--处理包含统计图形的高度,使其宽高一样
    var allPlayGameProportionHeight=$('#allPlayGameProportion');
    allPlayGameProportionHeight.css('height',allPlayGameProportionHeight.width());
    //总共人数玩游戏花费时间时段比例图表显示(饼状图)
    var allPlayGameProportionCharts=echarts.init(document.getElementById('allPlayGameProportion'));
    allPlayGameProportionCharts.setOption({
        title:{
            text:'每周打游戏时长占比',
            x:'center'
        },
        tooltip : {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        legend: {
            orient:'vertical',
            x:'left',
            data:['0-7小时','7-14小时','14-21小时','21-28小时','大于28小时']
        },
        toolbox: {
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
                name:'每周打游戏时长',
                type:'pie',
                radius:[20,110],
                center : ['50%', '50%'],
                roseType:'area',//面积，可以改为半径模式：radius
                data:[
                    {value:200, name:'0-7小时'},
                    {value:386, name:'7-14小时'},
                    {value:700, name:'14-21小时'},
                    {value:400, name:'21-28小时'},
                    {value:200, name:'大于28小时'}
                ]
            }
        ]
    });
    //各个学院所有人锻炼花费时间和打游戏花费时间三维数据显示（散点图）
    var allCollege={
        computer:'计算机学院',
        atmosphere:'大气科学学院',
        resourcesEnvironment:'资源环境学院',
        math:'应用数学学院',
        electronic:'电子工程学院（大气探测学院）',
        control:'控制工程学院',
        telecommunication:'通信工程学院',
        software:'软件工程',
        informationSafety:'信息安全工程学院',
        photoelectricity:'光电技术学院',
        manage:'管理学院',
        logistics:'物流学院',
        business:'商学院',
        statistics:'统计学院',
        cultureArt:'文化艺术学院',
        english:'外国语学院',
        politics:'政治学院'
    };
    var data = [//各个学院的数据，每一行代表每个学院，每一行里面的每个子集代表该学员里面的每个人
        [[20,77],[35,67],[42,21],[18,64]],//x,y，学院名,动态自己随便往数组里面添加属性
        [[5,15],[35,33],[42,11],[82,64]],
        [[62,76],[35,22],[42,21],[28,4]],
        [[20,12],[54,57],[22,21],[38,64]],
        [[40,34],[75,17],[22,33],[84,64]],
        [[20,65],[35,27],[44,21],[61,64]],
        [[50,44],[35,57],[42,22],[42,64]],
        [[72,54],[35,88],[23,26],[75,64]],
        [[20,22],[54,84],[12,21],[19,64]],
        [[11,43],[35,59],[72,27],[94,64]],
        [[34,34],[43,55],[42,78],[22,64]],
        [[78,45],[35,57],[55,65],[51,64]],
        [[65,65],[35,57],[33,32],[91,64]],
        [[20,22],[35,56],[52,54],[35,64]],
        [[57,48],[35,67],[42,44],[74,64]],
        [[88,78],[35,34],[12,21],[50,64]],
        [[88,99],[35,54],[42,5],[28,64]]
    ];
    var collegeExercisePlayGameProportionCharts=echarts.init(document.getElementById('collegeExercisePlayGameProportion'));
    collegeExercisePlayGameProportionCharts.setOption({
        title: {
            text: '各个学院锻炼时长、打游戏时长统计',
            x:'center'
        },
        //color:['red','black','blue'],
        legend: {
            y:'bottom',
            bottom:'5%',
            padding: [
                30,  // 上
                5, // 右
                0,  // 下
                5 // 左
            ],
            data: ['计算机学院', '大气科学学院', '资源环境学院', '应用数学学院', '电子工程学院（大气探测学院）',
                '控制工程学院', '通信工程学院','软件工程学院','信息安全工程学院','光电技术学院',
                '管理学院','物流学院','商学院','统计学院','文化艺术学院','外国语学院','政治学院']
        },
        xAxis: {
            name:'锻炼时长',
            splitLine: {
                lineStyle: {
                    type: 'dashed'
                }
            }
        },
        yAxis: {
            name:'打游戏时长',
            splitLine: {
                lineStyle: {
                    type: 'dashed'
                }
            },
            scale: true
        },
        series: [
            {
            name: '计算机学院',//-----------------------------------------------计算机学院
            data: data[0],
            type: 'scatter',

            label: {
                emphasis: {
                    show: true,
                    formatter: function () {
                         return allCollege.computer;
                    //formatter: function (param) {//param代表当前数组参数
                   //     return param.data[2];
                    },
                    position: 'top'
                }
            },
            itemStyle: {
                normal: {
                    //shadowBlur: 10,设置阴影大小
                    //shadowColor: 'white',//设置为白色代表不要阴影
                    /*color: new echarts.graphic.RadialGradient(0.1, 10, 1, [{
                        offset: 1,
                        color: 'rgb(251, 118, 123)'
                    }, {
                        offset: 1,
                        color: '#FE7B3E'
                    }])*/
                }
            }
        },
        {
        name: '大气科学学院',//-----------------------------------------------大气科学学院
        data: data[1],
        type: 'scatter',
        label: {
            emphasis: {
                show: true,
                formatter: function (param) {
                    return param.data[2];
                },
                position: 'top'//详情显示在每个点的上面
            }
        }
        },
            {
                name: '资源环境学院',//-----------------------------------------------资源环境学院
                data: data[2],
                type: 'scatter',
                label: {
                    emphasis: {
                        show: true,
                        formatter: function () {
                            return allCollege.resourcesEnvironment;
                        },
                        position: 'top'//详情显示在每个点的上面
                    }
                }
            },
            {
                name: '应用数学学院',//-----------------------------------------------应用数学学院
                data: data[3],
                type: 'scatter',
                label: {
                    emphasis: {
                        show: true,
                        formatter: function () {
                            return allCollege.math;
                        },
                        position: 'top'//详情显示在每个点的上面
                    }
                }
            },
            {
                name: '电子工程学院（大气探测学院）',//-----------------------------电子工程学院（大气探测学院）
                data: data[4],
                type: 'scatter',
                label: {
                    emphasis: {
                        show: true,
                        formatter: function () {
                            return allCollege.electronic;
                        },
                        position: 'top'//详情显示在每个点的上面
                    }
                }
            },
            {
                name: '控制工程学院',//-----------------------------------------------控制工程学院
                data: data[5],
                type: 'scatter',
                label: {
                    emphasis: {
                        show: true,
                        formatter: function () {
                            return allCollege.control;
                        },
                        position: 'top'//详情显示在每个点的上面
                    }
                }
            },
            {
                name: '通信工程学院',//-----------------------------------------------通信工程学院
                data: data[6],
                type: 'scatter',
                label: {
                    emphasis: {
                        show: true,
                        formatter: function () {
                            return allCollege.telecommunication;
                        },
                        position: 'top'//详情显示在每个点的上面
                    }
                }
            },
            {
                name: '软件工程学院',//-----------------------------------------------软件工程学院
                data: data[7],
                type: 'scatter',
                label: {
                    emphasis: {
                        show: true,
                        formatter: function () {
                            return allCollege.software;
                        },
                        position: 'top'//详情显示在每个点的上面
                    }
                }
            },
            {
                name: '信息安全工程学院',//-----------------------------------------------信息安全工程学院
                data: data[8],
                type: 'scatter',
                label: {
                    emphasis: {
                        show: true,
                        formatter: function () {
                            return allCollege.informationSafety;
                        },
                        position: 'top'//详情显示在每个点的上面
                    }
                }
            },        {
                name: '光电技术学院',//-----------------------------------------------光电技术学院
                data: data[9],
                type: 'scatter',
                label: {
                    emphasis: {
                        show: true,
                        formatter: function () {
                            return allCollege.photoelectricity;
                        },
                        position: 'top'//详情显示在每个点的上面
                    }
                }
            },
            {
                name: '管理学院',//-----------------------------------------------管理学院
                data: data[10],
                type: 'scatter',
                label: {
                    emphasis: {
                        show: true,
                        formatter: function () {
                            return allCollege.manage;
                        },
                        position: 'top'//详情显示在每个点的上面
                    }
                }
            },
            {
                name: '物流学院',//-----------------------------------------------物流学院
                data: data[11],
                type: 'scatter',
                label: {
                    emphasis: {
                        show: true,
                        formatter: function () {
                            return allCollege.logistics;
                        },
                        position: 'top'//详情显示在每个点的上面
                    }
                }
            },
            {
                name: '商学院',//-----------------------------------------------商学院
                data: data[12],
                type: 'scatter',
                label: {
                    emphasis: {
                        show: true,
                        formatter: function () {
                            return allCollege.business;
                        },
                        position: 'top'//详情显示在每个点的上面
                    }
                }
            },
            {
                name: '统计学院',//-----------------------------------------------统计学院
                data: data[13],
                type: 'scatter',
                label: {
                    emphasis: {
                        show: true,
                        formatter: function () {
                            return allCollege.statistics;
                        },
                        position: 'top'//详情显示在每个点的上面
                    }
                }
            },
            {
                name: '文化艺术学院',//-----------------------------------------------文化艺术学院
                data: data[14],
                type: 'scatter',
                label: {
                    emphasis: {
                        show: true,
                        formatter: function () {
                            return allCollege.cultureArt;
                        },
                        position: 'top'//详情显示在每个点的上面
                    }
                }
            },
            {
                name: '外国语学院',//-----------------------------------------------外国语学院
                data: data[15],
                type: 'scatter',
                label: {
                    emphasis: {
                        show: true,
                        formatter: function () {
                            return allCollege.english;
                        },
                        position: 'top'//详情显示在每个点的上面
                    }
                }
            },
            {
                name: '政治学院',//-----------------------------------------------政治学院
                data: data[16],
                type: 'scatter',
                label: {
                    emphasis: {
                        show: true,
                        formatter: function () {
                            return allCollege.politics;
                        },
                        position: 'top'//详情显示在每个点的上面
                    }
                }
            }
        ]
    });
});
