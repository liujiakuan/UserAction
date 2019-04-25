$(document).ready(function(){
	//排行榜选中时候的背景颜色设置
    $('.personItem').hover(function(){
        $(this).css({
            backgroundColor:'#DE5C4F'
        })
    },function(){
        $(this).css({
            backgroundColor:'#FFFFFF'
        })
    });
    $('.collegeItem').hover(function(){
        $(this).css({
            backgroundColor:'#7761A8'
        })
    },function(){
        $(this).css({
            backgroundColor:'#FFFFFF'
        })
    });
    //--------------------------男女比例
    var myChartManWoman=echarts.init(document.getElementById('proportionManWoman'));
    myChartManWoman.setOption({
           title:{
               text:'男女比例',
               subtext:'数据纯属虚构',
               x:'center'
           },
        tooltip:{
            trigger:'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        legend:{
            orient:'vertical',
            left:'left',
            data:['男','女']
        },
        series:[{
            name:'男女比例',
            type:'pie',
            radius:'55%',
            center:['50%','60%'],
            data:[
                {
                    value:586,
                    name:'男'
                },
                {
                    value:1300,
                    name:'女'
                }
            ],
            itemStyle: {
                emphasis: {
                    shadowBlur: 10,
                    shadowOffsetX: 0,
                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                }
            }
        }]
        });

    //------------------------学院填写人数比例
    var myChartCollege=echarts.init(document.getElementById('proportionCollege'));
    myChartCollege.setOption({
        title:{
            text:'各个学院填写人数',
            x:'center',
            subtext:'数据纯属虚构'
        },
        color:['#127EE3','#08DB83','#FF8E00'],
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
                data : ['计算机学院', '大气科学学院', '资源环境学院', '应用数学学院', '电子工程学院（大气探测学院）',
                        '控制工程学院', '通信工程学院','软件工程学院','信息安全工程学院','光电技术学院',
                        '管理学院','物流学院','商学院','统计学院','文化艺术学院','外国语学院','政治学院'],
            axisLabel : {
                show:true,
                interval: 0,
                rotate: -30,
                margin: 8,
                formatter: '{value}'
            },
            axisTick: {
                alignWithLabel: true
            }
        },
        yAxis : {
                type : 'value',
                boundaryGap: ['10%', '20%']
            },
        legend:{
            orient:'horizontal',
            left:'left',
          data:['男','女','总人数']
        },
	    series : [
	              {
	                  name:'男',
	                  type:'bar',
	                  barWidth: '20%',
	                  lable:{
	                      normal: {
	                          show: true,
	                          position: 'insideRight'
	                      }
	                  },
	                  data:[45,60,90,86,65,100,120,95,155,105,140,95,80,125,90,45,100]
	              },
	              {
	                  name:'女',
	                  type:'bar',
	                  barWidth: '20%',
	                  lable:{
	                      normal: {
	                          show: true,
	                          position: 'insideRight'
	                      }
	                  },
	                  data:[130,60,90,30,30,45,40,45,55,45,140,95,80,205,90,85,120]
	              },
	              {
	                  name:'总人数',
	                  type:'bar',
	                  barWidth: '20%',
	                  lable:{
	                      normal: {
	                          show: true,
	                          position: 'insideRight'
	                      }
	                  },
	                  data:[175,120,180,116,95,145,160,140,210,150,280,190,160,330,180,130,220]
	              }
	          ]
    });
});
