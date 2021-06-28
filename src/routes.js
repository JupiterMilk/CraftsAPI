// import page from './components/page.vue'
import Home from './components/home.vue'
import Login from './components/login.vue'
import Reset from './components/reset_pwd.vue'
import VerifyEmail from './components/verify_email.vue'
import single from './components/single.vue'

const routes = [
    // {path : '/',component : page},
    {
        path: '/',
        component: Home
    },
    {
        path: '/login',
        component: Login
    },

    {
        path: '/reset_pwd',
        component: Reset
    },
    {
        path: '/verify_email',
        component: VerifyEmail
    },
    {
        path: '/single',
        component: single
    }
]


export default routes