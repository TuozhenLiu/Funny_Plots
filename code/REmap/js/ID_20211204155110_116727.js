  var myChart = echarts.init(document.getElementById("ID_20211204155110_116727"));

                       var optionID_20211204155110_116727 = {
  backgroundColor: '#1b1b1b',
  color: ['gold','aqua','lime'],
  title : {
  text: 'REmap实例数据',
  subtext:'theme:Dark',
  x:'center',
  textStyle : {
  color: '#fff'
  }
  },
  tooltip : {
  trigger: 'item',
  formatter: '{b}'
  },
  toolbox: {
  show : true,
  orient : 'vertical',
  x: 'right',
  y: 'center',
  feature : {
  mark : {show: true},
  dataView : {show: true, readOnly: false},
  restore : {show: true},
  saveAsImage : {show: true}
  }
  },
  dataRange: {
  min : 0,
  show: false,
  max : 100,
  y: '60%',
  calculable : true,
  color: ['#ff3333', 'orange', 'yellow','lime','aqua']
  },

  series : [
  {
  type:'map',
  itemStyle:{
  normal:{
  borderColor:'rgba(100,149,237,1)',
  borderWidth: 0.5,
  areaStyle:{
  color: '#1b1b1b'
  }
  }
  },
  data:[],
  geoCoord: {'北京': [116.413554,39.911013],
'上海': [121.480237,31.236305],
'广州': [113.270793,23.135308],
'大连': [121.621391,38.919345],
'南宁': [108.373351,22.823037],
'南昌': [115.864528,28.687675],
'拉萨': [91.121025,29.650088],
'长春': [125.33017,43.82178],
'包头': [109.846755,40.663636],
'重庆': [106.557165,29.570997],
'常州': [119.58,31.47]},

  markLine : {
  smooth:true,
  effect : {
  show: true,
  scaleSize: 1,
  period: 30,
  color: '#fff',
  shadowBlur: 10
  },
  itemStyle : {
  color: 'red',
  normal: {
  borderWidth:1,
  lineStyle: {
  type: 'solid',
  shadowBlur: 10
  },
  label:{show:false}
  }
  },

  data : [
  [{name:'北京'}, {name:'上海',value: 90}],
[{name:'北京'}, {name:'广州',value: 70}],
[{name:'北京'}, {name:'大连',value: 70}],
[{name:'北京'}, {name:'南宁',value: 20}],
[{name:'北京'}, {name:'南昌',value: 80}],
[{name:'北京'}, {name:'拉萨',value: 80}],
[{name:'北京'}, {name:'长春',value: 20}],
[{name:'北京'}, {name:'包头',value: 30}],
[{name:'北京'}, {name:'重庆',value: 20}],
[{name:'北京'}, {name:'常州',value:100}]
  ]
  },
  markPoint : {
  symbol:'emptyCircle',
  symbolSize : function (v){
  return 10 + v/10
  },
  effect : {
  show: true,
  shadowBlur : 0
  },
  itemStyle:{
  normal:{
  label:{show:true}
  }
  },
  data : [
  {name:'上海',value: 90},
{name:'广州',value: 70},
{name:'大连',value: 70},
{name:'南宁',value: 20},
{name:'南昌',value: 80},
{name:'拉萨',value: 80},
{name:'长春',value: 20},
{name:'包头',value: 30},
{name:'重庆',value: 20},
{name:'常州',value:100}
  ]
  }
  }
  ]
  };
  myChart.setOption(optionID_20211204155110_116727);	
