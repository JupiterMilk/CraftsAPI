import Vue from 'vue';
import App from './App.vue';
import VueRouter from 'vue-router';
import routes from './routes';

Vue.use(VueRouter);

//Vue.use(VueAxios, axios)
//Vue.use(VueRouter)

const router = new VueRouter({
	routes,
});
Vue.config.productionTip = false;

new Vue({
	render: (h) => h(App),
	router,
}).$mount('#app');
