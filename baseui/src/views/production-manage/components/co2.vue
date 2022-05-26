<template>
	<div id="container" >
		<!-- <el-card style="width: 1000px;height: 800px;margin-left: 50px;margin-top: 50px;"> -->
			<div id="weatherPanel"  style="width: 400px;height:300px;display: ;"></div>
			<div id="weatherPanel2"  style="width: 400px;height:300px;"></div>
		<!-- </el-card> -->
		 
	</div>
</template>

<script>
	import * as echarts from 'echarts'
	export default{
	    name:'Co2Detail',
	    
	    data(){
	       
	        return{
	            chart:null,
	            shelterName:"",
	            //0:温度，1:co2，2:水分
	            panelStatus:0,
	            temperatureSeries:[],
	            weather:35,
	            option:{
	                legend: {
	                    data: ['12小时内二氧化碳浓度变化']
	                },
	                xAxis: {
	                     type: 'category',   // 还有其他的type，可以去官网喵两眼哦
	                    data: ['0', '1', '2', '3', '4', '5', '6','7','8','9','10','11'],   // x轴数据
	                    name: '日期',   // x轴名称
	                    // x轴名称样式
	                    nameTextStyle: {
	                      fontWeight: 500,
	                      fontSize: 12
	                    }
	
	                },
	                yAxis: {
	                    type: 'value',
	                name: '温度',   // y轴名称
	                // y轴名称样式
	                nameTextStyle: {
	                  fontWeight: 600,
	                  fontSize: 18
	                } 
	                },
	                label: {},
	                tooltip: {
	                    trigger: 'axis'   // axis   item   none三个值
	                },
	                series: [
	                     {
	                        name: '12小时内温度变化',
	                       data: [20, 22, 21, 24, 20, 23, 22,21,22, 21, 24, 20],
	                     type: 'line'
	                     },        ]
	            },
				option1:{
				    legend: {
				        data: ['7日内平均温度', '7日内最低温度', '7日内最高温度']
				    },
				    xAxis: {
				         type: 'category',   // 还有其他的type，可以去官网喵两眼哦
				        data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],   // x轴数据
				        name: '日期',   // x轴名称
				        // x轴名称样式
				        nameTextStyle: {
				          fontWeight: 500,
				          fontSize: 12
				        }
					
				    },
				    yAxis: {
				        type: 'value',
				    name: '温度',   // y轴名称
				    // y轴名称样式
				    nameTextStyle: {
				      fontWeight: 600,
				      fontSize: 18
				    } 
				    },
				    label: {},
				    tooltip: {
				        trigger: 'axis'   // axis   item   none三个值
				    },
				    series: [
				         {
				            name: '7日内平均温度',
				            data: [20, 22, 21, 24, 20, 23, 22],
				         type: 'line'
				         },    
						{
						   name: '7日内最低温度',
						   data: [18, 17, 19, 20, 18, 15, 16],
						type: 'line'
						}, 
						{
						   name: '7日内最高温度',
						   data: [22, 24, 21, 24, 23, 26, 23],
						type: 'line'
						}, ]
				},
	        }
	        
	    },
	    methods:{
	         initEchart(panel){
	            this.chart=echarts.init(document.getElementById(panel));
	            this.chart.setOption(this.option);
	        },
			initEchart1(panel){
			    this.chart=echarts.init(document.getElementById(panel));
			    this.chart.setOption(this.option1);
			},
	        
	       
	    },
	    mounted(){
	        this.shelterName=this.$route.query.shelterName;
	        this.initEchart('weatherPanel');
	         // this.initEchart('co2Panel');
	          this.initEchart1('weatherPanel2');
	    }
	}
</script>

<style scoped>
	#container{
		margin-top: 80px;
		margin-left: 100px;
		margin-right: 100px;
		border: 1px solid black;
		padding: 40px;
		border-radius: 30px;
		display: flex;
		justify-content:space-around;
	}
</style>
