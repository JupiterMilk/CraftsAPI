<template>
    <div  @submit.prevent ="onSubmit($event)">
         <header class="login-header vh-100 w-100">
      <img class="bg-effect" alt="" />
      <div class="container">
        <div class="row">
          <div class="col">
            <nav class="navbar navbar-expand-lg">
              <a class="navbar-brand" href="#"
                ><img
                  class="d-md-block d-none"
                  src="/logo.2da8e07c.png"
                  alt="logo"
              /></a>
              <button
                class="navbar-toggler"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent"
                aria-expanded="false"
                aria-label="Toggle navigation"
              >
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="m-auto mb-2 mb-lg-0 navbar-nav">
                  <li class="mx-3 nav-item">
                    <a class="active nav-link" aria-current="page" href="#"
                      >Home</a
                    >
                  </li>
                  <li class="mx-3 nav-item">
                    <a class="nav-link" href="#">Shop</a>
                  </li>
                  <li class="mx-3 nav-item">
                    <a class="nav-link" href="#">Contact</a>
                  </li>
                  <li class="mx-3 nav-item">
                    <a class="nav-link" href="#">About us</a>
                  </li>
                </ul>
                <ul class="navbar-nav">
                  <li class="nav-item">
                    <a class="cart-icon mx-4 nav-link text-red" href="#"
                      ><i class="fa fa-shopping-cart"></i
                      ><span class="cart-badge">1</span></a
                    >
                  </li>
                </ul>
              </div>
            </nav>
          </div>
        </div>
      </div>
      <img
        style="position:fixed;left:0;bottom:0;height:80%;z-index:-1;"
        src="/home-header-pattern.e8d1e471.png"
      />
      <div class="container">
        <div class="mt-5 row">
          <div class="col d-grid d-md-block d-none gap-1">
            <img
              style="position:fixed;left:48px;bottom:115px;height:70%;z-index:-1;margin-top:10px;"
              src="/verify-email1.c1cdb937.png"
            />
          </div>
          <div class="col d-grid gap-3 mt-3 p-inline-left-5">
            <div class="bg-white border mt-5 p-4 shadow">
              <h3>Verify email:</h3>
              <div class="form-group">
                <input
                  class="form-control"
                  type="text"
                  name="email"
                  placeholder="Email..."
                  required v-model="email"
                />
              </div>
              <!-- <div class="form-group">
                <input
                  class="form-control"
                  type="password"
                  name="password"
                  placeholder="Password..."
                  required v-model="password"
                />
              </div> -->
              <div
                class="align-items-center d-flex flex-row form-group justify-content-between"
              >
                <a href="#" style="color:#00f;margin:top 3px;"
                  >Remember password?</a
                >
                <button type="submit" class="btn btn-block btn-lg btn-primary"@click="verifyEmail()">
                  Verify
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </header>
    </div>   
</template>
<script>
import axios from "axios"
export default {
    data(){
    return{
      email:'',
      // password:''
    }
  },
  methods:{
    verifyEmail(){
      if(this.email.length > 0){
        axios.post(`${process.env.VUE_APP_ABS_API}/password/verify`,{
            email: this.email,
            // password: this.password
        }).then((response)=>{
          console.log(response.data.token)
        })
      }
    }
  }
}
</script>