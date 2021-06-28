<template>
    <div>
        <nav class="navbar navbar-expand-lg">
            <a class="navbar-brand" href="#"
              ><img class="d-md-block d-none" src="" alt="logo"
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
                  <a :class="(dataActive == 'home') ? 'active' : ''" class="nav-link" aria-current="page" href="#"
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
                  <a class="cart-icon mx-4 nav-link text-white" href="#"
                    ><i class="fa fa-shopping-cart"></i
                    ><span class="cart-badge">1</span></a
                  >
                </li>
                <li class="nav-item">
                  <a
                    class="btn-success nav-link px-4 rounded-pill shadow text-white"
                    href="#"
                    >Login</a
                  >
                </li>
              </ul>
            </div>
          </nav>
    </div>
</template>

<script>
export default {
    props:{
        dataActive:String
    }
}
</script>

<style lang="css">
    
</style>