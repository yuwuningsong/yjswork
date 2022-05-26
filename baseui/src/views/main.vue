<template>
<div id="container">

  <div id="main">
	  <router-view></router-view>
  </div>
  
 

</div>	

</template>
<script type="text/javascript" scoped>
	
	export default{
		name:'Main',
		data(){
			return{
				
			}
		}
	}
</script>
<style type="text/css" scoped>

*{
	margin: 0;
	padding: 0;
}
#container{
	display: flex;
}
#sidebar{
	width: 200px;
	background-color:rgba(69, 136, 176, 0.725)
}
#main{
	flex:1;
	background-color: rgba(170, 221, 251, 0.114);

	height:800px;
}

.el-menu-item{
	width: 200px;
	
}

  
	/* #panel{
		display: grid;
		 grid-template-columns: 200px 200px 200px;
  grid-gap: 5px;
  grid-template-rows: 200px 200px;
   grid-template-areas: 'a b c'
                       'd e f';
                      
	} */
</style>