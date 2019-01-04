import Vue from 'vue'
import Router from 'vue-router'

Vue.use(Router)
const routes = [
  {
    path: '/',
    name: 'Login',
    component: () => import('@/views/login/index')
  },
  {
    path: '/login',
    name: 'Login',
    component: () => import('@/views/login/index')
  }
]

export default new Router({
  routes
})
