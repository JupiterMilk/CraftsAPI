<template>
    <div>
        <header class="login-header vh-100 w-100">
      <img class="bg-effect" alt="" />
      <div class="container">
        <div class="row">
          <div class="col">
            <Menu dataActive="home"/>
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
              src="/reset-password.0af18c08.png"
            />
          </div>
          <div class="col d-grid gap-3 mt-3 p-inline-left-5">
            <div class="bg-white border mt-5 p-4 shadow">
              <h3>Verify password:</h3>
              <div class="form-group">
                <input
                  class="form-control"
                  type="text"
                  name="email"
                  placeholder="Email..."
                  required
                />
              </div>
              <div class="form-group">
                <input
                  class="form-control"
                  type="password"
                  name="password"
                  placeholder="Password..."
                  required
                />
              </div>
              <div
                class="align-items-center d-flex flex-row form-group justify-content-between"
              >
                <a href="#" style="color:#00f;margin:top 3px;"
                  >Remember password?</a
                >
                <button type="submit" class="btn btn-block btn-lg btn-primary">
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
import Menu from '@/components/core-components/menu.vue';
export default {
    components:{
      Menu
    }
}
</script>