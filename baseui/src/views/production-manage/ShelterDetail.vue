<template>
    <div>
        <div style="width:100%">
        <h2 style="float:left;margin-left:40px">{{username}}</h2>
        </div>
        <br>
        <div class="cardContainer">
           
        <el-card style="margin-left:80px;margin-top: 30px; width: 900px; height: 700px;">
             <div slot="header" class="clearfix">
            <span style="float:left;margin-left:20px">详细信息</span>
           <!--  <el-button style="float: right; padding: 3px 0" type="text">操作按钮</el-button> -->
             </div>
			 <div id="" style="line-height: 40px;" >
			 <div id="image" style="float: left;">
			 	<img src='../../../public/img/pic4.jpg' style="width: 400px;height: 300px;" alt="hh">
			 </div>
			 <div id="text">
			 	<span>{{username}}</span>
			 </div>
			 
			 
            
			 
			
			
			
			 </div>
           
        </el-card>
         <!-- <el-card>
             <div slot="header" class="clearfix">
            <span style="float:left;margin-left:20px">温度</span>
             <el-button style="float: right; padding: 3px 0" type="text">操作按钮</el-button>
             </div>
             <span>当前温度：{{weather}}摄氏度</span>
             <div id="co2Panel"  style="width: 400px;height:300px;"></div>
        </el-card> -->
        </div>
        <!-- <el-button-group >
        <el-button @click="getStatus(0)">温度</el-button>
        <el-button @click="getStatus(1)">co2浓度</el-button>
        <el-button @click="getStatus(2)">水分</el-button>
        </el-button-group> -->
        <!-- <div id="panelGroup">
        <div id="weatherPanel"  style="width: 400px;height:300px;"></div>
        <div id="co2Panel"  style="width: 400px;height:300px;"></div>
        <div id="waterPanel"  style="width: 400px;height:300px;"></div>
       </div> -->
    </div>
    
</template>
<script>
import * as echarts from 'echarts'
export default{
    name:'ShelterDetail',
    
    data(){
       
        return{
            chart:null,
            username:"",
            //0:温度，1:co2，2:水分
            panelStatus:0,
            temperatureSeries:[],
            weather:35,
            option:{
                legend: {
                    data: ['8小时内温度变化', '7日内温度变化', '广发银行', '上海银行']
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
                        name: '8小时内温度变化',
                        data: [820, 932, 901, 934, 1290, 1330, 1320],
                     type: 'line'
                     },        ]
            },
        }
        
    },
    methods:{
         initEchart(panel){
            this.chart=echarts.init(document.getElementById(panel));
            this.chart.setOption(this.option);
        },
        
        getStatus(index){
            this.panelStatus=index;
        }
    },
    mounted(){
        this.username=this.$route.query.username;
        this.initEchart('weatherPanel');
         this.initEchart('co2Panel');
        //  this.initEchart('waterPanel');
    }
}
</script>
<style scoped>
body{
    
}
.el-button-group{
    position: absolute;
    left:250px;
    top:80px;
}
#panelGroup{
    display: grid;
    grid-template-columns: 400px 400px;
    grid-template-rows: 300px 3000px;
    /* flex-wrap:wrap-reverse; */
    position: absolute;
    left: 250px;
    top:60px;
    
}
.cardContainer{
    width: 80%;
    height: 100%;
   
    margin: 40px auto;
    min-height: 500px;
    position: relative;
}
.el-card{
    width:50%;
   /* margin: 0 auto; */
}
span{
    font-size: 20px;
}
.router-link-active{
	list-style: none;
	color: #2C3E50;
	text-decoration: none;
}
a{
	list-style: none;
	color: #2C3E50;
	text-decoration: none;
}
</style>
