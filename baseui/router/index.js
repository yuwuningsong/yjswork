import Vue from 'vue';
import VueRouter from 'vue-router'
import Main from '../src/views/main.vue'
import Login from '../src/views/login/login.vue'

import ShelterList from '../src/views/production-manage/shelterList'
import ShelterDetail from '../src/views/production-manage/ShelterDetail'


Vue.use(VueRouter)

const routes=[
	{
		path: '/',
		name:'Main',
		component:Main,
		
		children:[
			
			{
				path: 'production-manage',
				name:'ShelterList',
				component:ShelterList,
				children:[
					
				]
			},
			{
				path: 'production-manage/detail',
				name:'ShelterDetail',
				component:ShelterDetail
			},
			


			
			
		]
	},
	{
		path: '/login',
		name:'Login',
		component:Login
	},
	
]
const router = new VueRouter({
	mode:'history',
	routes
})
export default router