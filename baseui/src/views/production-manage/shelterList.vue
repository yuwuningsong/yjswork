<template>
    <div>
       <h2>后台管理</h2>
      
        <el-card>
        <div id="" style="display: flex;margin-left: 700px;">
        	<el-input
        	style="width: 160px;"
        	        v-model="search"
        	        size="mini"
        	        placeholder="输入关键字搜索"/>
        	<el-button style="margin-left: 10px;" size="mini" type='primary' @click='add'>新增</el-button>
        	 
        </div>
         <el-table
      :data="tableData"
      style="width: 100%">
      <el-table-column
        prop="username"
        label="姓名"
        width="180">
      </el-table-column>
      <el-table-column
        prop="nickname"
        label="昵称"
        width="180">
      </el-table-column>
      <el-table-column
        prop="email"
        label="电子邮箱">
      </el-table-column>
       <el-table-column
        prop="phone"
        label="电话">
      </el-table-column>
	  <el-table-column
	    prop="address"
	    label="地址">
	  </el-table-column>
       <el-table-column
       label="操作">
        <template slot-scope="scope">
        <el-button @click="handleClick(scope.row)" type="text" size="small">查看</el-button>
		<el-button type="text" size="small" @click='edit(scope.row)' style="margin-right:10px ;">编辑</el-button>
		<el-popconfirm
		  title="确定删除吗？"
		  @confirm="cancel(scope.row.id)"
		>
		 <el-button slot="reference" type="text" size="small" >删除</el-button>
		</el-popconfirm>
		 
       <!-- <el-button type="text" size="small">编辑</el-button> -->
      </template>
      </el-table-column>
	 
    </el-table>
	<el-pagination
	  @current-change="handleCurrentChange"
	  :current-page.sync="pageNum"
	  :page-size="pageSize"
	  layout="prev, pager, next"
	  :page-count="totalPage"
	  style="float: right"
	  
	></el-pagination>
    </el-card>
	<el-dialog
	  title="编辑"
	  :visible.sync="dialogVisible"
	  width="30%"
	 >
	  <!-- <span>这是一段信息</span> -->
	  <el-form v-model="editForm"  label-width="100px" class="demo-editForm">
		<el-form-item label="id" prop="id">
		  <el-input v-model="editForm.id" disabled=""></el-input>
		</el-form-item>  
	    <el-form-item label="姓名" prop="username">
	      <el-input v-model="editForm.username" ></el-input>
	    </el-form-item>
		<el-form-item label="性别" prop="sex">
		  <el-select v-model="editForm.sex"  style="width: 100%;">
			<el-option label="女" value="female"></el-option>
			<el-option label="男" value="male"></el-option>
		  </el-select>
		</el-form-item>
		<el-form-item label="昵称" prop="nickname">
		  <el-input v-model="editForm.nickname"></el-input>
		</el-form-item>
		<el-form-item label="邮箱" prop="email">
		  <el-input v-model="editForm.email"></el-input>
		</el-form-item>
		<el-form-item label="电话" prop="phone">
		  <el-input v-model="editForm.phone"></el-input>
		</el-form-item>
		<el-form-item label="地址" prop="address">
		  <el-input v-model="editForm.address"></el-input>
		</el-form-item>
		
	   
		</el-form>
	  <span slot="footer" class="dialog-footer">
	    <el-button @click="dialogVisible = false">取 消</el-button>
	    <el-button type="primary" @click="save">确 定</el-button>
	  </span>
	</el-dialog>
	<!-- 新增对话框 -->
	<el-dialog
	  title="新增"
	  :visible.sync="adddialogVisible"
	  width="30%"
	 >
	 
	 <el-form v-model="addForm"  label-width="100px" class="demo-editForm">
	   <!-- <el-form-item label="id" prop="id">
	     <el-input v-model="editForm.id"></el-input>
	   </el-form-item>  -->
	   <el-form-item label="姓名" prop="username">
	     <el-input v-model="addForm.username" ></el-input>
	   </el-form-item>
	   <el-form-item label="性别" prop="sex">
	     <el-select v-model="addForm.sex"  style="width: 100%;">
	   	<el-option label="女" value="female"></el-option>
	   	<el-option label="男" value="male"></el-option>
	     </el-select>
	   </el-form-item>
	   <el-form-item label="昵称" prop="nickname">
	     <el-input v-model="addForm.nickname"></el-input>
	   </el-form-item>
	   <el-form-item label="邮箱" prop="email">
	     <el-input v-model="addForm.email"></el-input>
	   </el-form-item>
	   <el-form-item label="电话" prop="phone">
	     <el-input v-model="addForm.phone"></el-input>
	   </el-form-item>
	   <el-form-item label="地址" prop="address">
	     <el-input v-model="addForm.address"></el-input>
	   </el-form-item>
	 		</el-form>
	  <span slot="footer" class="dialog-footer">
	    <el-button @click="adddialogVisible = false">取 消</el-button>
	    <el-button type="primary" @click="addUser">确 定</el-button>
	  </span>
	</el-dialog>
	<!-- <el-dialog
	  title="提示"
	  :visible.sync="canceldialogVisible"
	  width="30%"
	 >
	  <span>确认删除吗？</span>
	  <span slot="footer" class="dialog-footer">
	    <el-button @click="canceldialogVisible = false">取 消</el-button>
	    <el-button type="primary" @click="dele">确 定</el-button>
	  </span>
	</el-dialog> -->
    </div>

</template>
<script>
//import { defineComponent } from '@vue/composition-api'

export default{
    name:'ShelterList',
    data(){
        return{
			search:null,
			dialogVisible: false,
			canceldialogVisible:false,
			adddialogVisible:false,
			editForm:[],
			addForm:[],
            tableData:[],
			pageNum:1,
			pageSize:4,
			totalPage:null,
        }
    },
	created(){
		// this.$axios.get()
		//this.getUserList();
		this.getUserList();
		this.getUserData();
	},
    methods:{
		save(){
			this.dialogVisible = false;
			let res = this.$axios.post("http://localhost:9090/user",this.editForm);
			if(res){
				console.log(res);
			}
		},
		add(){
			this.adddialogVisible=true;
			this.addForm={};
		},
		getUserData:async function(){
			let res= await this.$axios.get('user/page',{
				params:{
					pageNum:this.pageNum,
					pageSize:this.pageSize
				}
			});
			console.log(res);
			
			 this.totalPage=res.data.totalCount;
			 this.tableData=res.data.userData;
		},
		getUserList:async function(){
			// let res;
			// this.$axios.get('/user', {})
			//     .then(function (response) {
			//         console.log(response);
			// 		res=response;
			// 		return res;
					
			//     })
			//     .catch(function (error) {
			//         console.log(error);
			//     });
			
			let res= await this.$axios.get('user');
			console.log(res);
			
			
		},
		handleCurrentChange(index){
			this.pageNum=index;
			this.getUserData();
		},
		showUserList(){
			this.tableData=this.getUserList();
		},
        handleClick(row){
             
            this.$router.push({
                path:"/production-manage/detail",
                query:{
                    username: row.username,
                   
                },
            } );
            
            console.log(this.$router);
           
        },
		cancel(id){
			
			this.$axios.delete('user/'+id).then(
			res=>{
				if(res){
					this.$message.success("删除成功");
					this.canceldialogVisible = false;
					this.getUserData();
				}else{
					this.$message.error("保存失败");
				}
			})
			
		},
		edit(row){
			console.log(row.shelterCode);
			this.editForm=row;
			this.dialogVisible=true;
		},
		addUser(){
			this.adddialogVisible=false;
			let res = this.$axios.post("http://localhost:9090/user",this.addForm);
			if(res){
				console.log(res);
			}
			// const _this=this;
			// let res = this.$axios({
			// 	// headers:{
			// 	// 	'Content-Type':'application/json'
			// 	// },
			// 	url:'user',
			// 	method:'post',
				
			// 	data:JSON.stringify({
			// 		"username":_this.addForm.username
			// 	})
				
			// });
			// console.log(res);
		},
		

    }
}
</script>

<style scoped>
    .el-card{
        height: 100%;
        width: 80%;
        margin: 0 auto;
        min-height: 500px;
    }
</style>