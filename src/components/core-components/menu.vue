<template>
  <div class="fixed-top px-5 py-2 bg-white shadow">
    <nav class="navbar navbar-expand-lg">
      <a class="navbar-brand" href="#"></a>
      <router-link :to="{ path: '/' }">
        <img class="d-md-block d-none" src="/logo.2da8e07c.png" alt="logo" />
      </router-link>
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
            <router-link
              :class="dataActive == 'home' ? 'active' : ''"
              class="nav-link"
              aria-current="page"
              :to="{ path: '/' }"
              >Home</router-link
            >
          </li>
          <li class="mx-3 nav-item">
            <router-link class="nav-link" :to="{ path: '/shop' }"
              >Shop</router-link
            >
          </li>
          <li class="mx-3 nav-item">
            <router-link class="nav-link" :to="{ path: '/contact' }"
              >Contact</router-link
            >
          </li>
          <li class="mx-3 nav-item">
            <router-link class="nav-link" :to="{ path: '/about' }"
              >About us</router-link
            >
          </li>
        </ul>
        <ul class="navbar-nav">
          <li class="nav-item">
            <router-link
              class="cart-icon mx-4 nav-link text-white"
              :to="{ path: '/cart' }"
            >
              <i class="fa fa-shopping-cart"></i
              ><span class="cart-badge">{{ cartCount }}</span>
            </router-link>
          </li>
          <li class="nav-item">
            <router-link
              class="btn-success nav-link px-4 rounded-pill shadow text-white"
              :to="{ path: '/login' }"
              >Login</router-link
            >
          </li>
        </ul>
      </div>
    </nav>
  </div>
</template>

<script>
export default {
  props: {
    dataActive: String,
  },
  data: () => {
    return {
      cartCount: 0,
    };
  },
  created() {
    setInterval(() => {
      let cartDataCount = JSON.parse(window.localStorage.getItem("cart"));
      this.cartCount = cartDataCount.length;
    }, 500);
  },
};
</script>

<style lang="css">
</style>