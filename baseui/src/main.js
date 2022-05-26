import Vue from 'vue'
import App from './App.vue'
import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';
import router from '../router/index.js';
import echarts from 'echarts';
import axios from 'axios' //引入axios 
axios.defaults.baseURL='http://localhost:9090'
Vue.prototype.$axios = axios; //...
Vue.config.productionTip = false
Vue.prototype.$echarts = echarts;

Vue.use(ElementUI);
new Vue({
	router,
  render: h => h(App),
}).$mount('#app')
