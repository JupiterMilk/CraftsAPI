<template>
  <div>
    <header class="login-header vh-100 w-100">
      <img class="bg-effect" alt="" />
      <div class="container">
        <div class="row">
          <div class="col">
            <Menu dataActive="home" />
          </div>
        </div>
      </div>
      <img
        style="position: fixed; left: 0; bottom: 0; height: 80%; z-index: -1"
        src="/home-header-pattern.e8d1e471.png"
      />
      <div class="container">
        <div class="mt-5 row">
          <div class="col d-grid gap-1">
            <div class="bg-white border p-4 shadow">
              <h3>Signup:</h3>
              <form @submit.prevent="onSubmit($event)">
                <div class="form-group">
                  <input
                    class="form-control"
                    type="text"
                    name="name"
                    placeholder="Name..."
                    required
                    v-model="register.name"
                  /><br />
                </div>
                <div class="form-group">
                  <input
                    class="form-control"
                    type="text"
                    name="password"
                    placeholder="Email..."
                    required
                    v-model="register.email"
                  /><br />
                </div>
                <div class="form-group">
                  <input
                    class="form-control"
                    type="password"
                    name="email"
                    placeholder="Password..."
                    required
                    v-model="register.password"
                  /><br />
                </div>
                <div class="form-group">
                  <input
                    class="form-control"
                    type="password"
                    name="Cpassword"
                    placeholder="Confirme password..."
                    required
                    v-model="register.password"
                  /><br />
                </div>
                <div class="form-group">
                  <button
                    type="submit"
                    class="btn btn-primary"
                    @click="signup()"
                  >
                    Signup
                  </button>
                </div>
              </form>
            </div>
          </div>
          <div
            class="col d-grid gap-3 p-inline-end-5"
            @submit.prevent="onSubmit"
          >
            <div class="bg-white border p-4 shadow">
              <h3>Login:</h3>
              <div class="form-group">
                <input
                  class="form-control"
                  type="text"
                  name="email"
                  placeholder="Email..."
                  required
                  v-model="login.email"
                />
              </div>
              <div class="form-group">
                <input
                  class="form-control"
                  type="password"
                  name="password"
                  placeholder="Password..."
                  required
                  v-model="login.password"
                />
              </div>
              <div class="form-group">
                <button
                  @click="handleSubmit()"
                  type="submit"
                  class="btn btn-block btn-primary"
                >
                  Login
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
import axios from "axios";
import Menu from "@/components/core-components/menu.vue";
export default {
  components: {
    Menu,
  },
  data() {
    return {
      register: {
        id: "",
        name: "",
        email: "",
        password: "",
        role: "",
        phone: "",
      },
      login: {
        email: "",
        password: "",
      },
    };
  },
  methods: {
    signup() {
      axios
        .post(`${process.env.VUE_APP_ABS_API}/auth/signup`, {
          id: this.register.id,
          name: this.register.name,
          email: this.register.email,
          password: this.register.password,
          role: "user",
          phone: "2345678",
        })
        .then((response) => {
          console.log(response.data.token);
        });
    },
    onSubmit(e) {
      e.preventDefault();
      console.log("from onsubmit", e);
    },
    handleSubmit() {
      axios
        .post(`${process.env.VUE_APP_ABS_API}/auth/login`, {
          email: this.login.email,
          password: this.login.password,
        })
        .then((response) => {
          console.log(response.data.token);
          window.localStorage.setItem("token", response.data.token);
        });
    },
  },
  created() {
    console.log("from login component");
  },
};
</script>