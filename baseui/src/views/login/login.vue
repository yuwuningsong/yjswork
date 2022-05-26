<template>
	<div id="main">
		
		<el-card>
			<span style="font-size:30px">人员管理系统</span >
			
		<el-form ref="form" :model="form" label-width="70px" id="login">
			<span >
				 登录
			</span>
			<br>
			<br>
			<el-form-item label="用户名">
				<el-input v-model="form.username"></el-input>
			</el-form-item>
			<el-form-item label="密码 ">
				<el-input v-model="form.password"  type="password"></el-input>
			</el-form-item>
			<el-form-item>
    		<el-button @click="login" style="background-color: skyblue;color: white;">登录</el-button>
    			<el-button @click="signIn" type="text">注册</el-button>
  			</el-form-item>
		</el-form>
		<!-- 注册 -->
		<el-form ref="form" :model="form" label-width="70px" id="register">
			<span >
				 注册
			</span><br>
			<br>
			<el-form-item label="用户名" >
				<el-input v-model="regform.username"></el-input>
			</el-form-item>
			<el-form-item label="密码">
				<el-input v-model="regform.password" type="password"></el-input>
			</el-form-item>
			<el-form-item label="确认密码">
				<el-input v-model="repwd"  type="password"></el-input>
			</el-form-item>
			<el-form-item>
			<el-button @click="reg" style="background-color: royalblue;color: white;">注册</el-button>
				<el-button @click="sign" type="text">返回登录</el-button>
			</el-form-item>
		</el-form>
		</el-card>
	</div>
</template>
<script type="text/javascript">
	export default{
		name:'Login',
		data(){
			return{
				form:{
					username:'',
					password:''
				},
				regform:{
					username:'',
					password:''
				},
				repwd:"",
			} 
		},
		methods:{
			//登录
			login(){
				this.$axios.post("user/login",this.form).then(res=>{
					if(res.data.toString()=="false"){
						console.log(res.data);
						console.log(typeof(res.data));
						this.$message.error("登录失败，用户名或密码错误");
					}else{
						console.log(res);
						this.$router.push("/production-manage");
						}
						
				})

			},
			//注册
			reg(){
				if(this.repwd!=this.regform.password){
					this.$message.error("两次输入密码不一致！");
				}
				if(this.repwd==this.regform.password){
					this.$axios.post("user/reg",this.regform).then(res=>{
						if(res.data.toString()=="false"){
							console.log(res.data);
							console.log(typeof(res.data));
							this.$message.error("注册失败，用户名已存在");
						}else{
							this.$message.success("注册成功！");
							this.form=this.regform;
						}
					})
				}
			},
			signIn(){
				document.getElementById('login').style.display='none';
				document.getElementById('register').style.display='block';
				
			},
			sign(){
				document.getElementById('login').style.display='block';
				document.getElementById('register').style.display='none';
			}
			
		}
	}
</script>
<style type="text/css" scoped>
	*{
		margin: 0;
		font-size: 20px;
		
	}
	#main{
		padding: 20px;
		background: url(../../../public/img/bgc.jpg) ;
	}
	#register{
		display: none;
	}
	.el-card{
		width: 350px;
		height: 400px;
		
		margin: 100px auto ;
		border-radius: 30px;
		padding: 20px;
		padding-left: 30px;
		padding-right: 30px;
	}
	.el-form{
		margin-top:20px;
		
	}
	.el-button{
		margin-top: 25px;
		border-radius: 20px;
		}
	.el-input{
		border-radius: 30px;
		width: 250px;
		
	}
	
</style>