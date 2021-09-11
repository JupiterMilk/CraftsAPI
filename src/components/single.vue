<template>
  <div>
    <header class="single-header w-100">
      <div class="container">
        <div class="row">
          <div class="col">
            <Menu dataActive="home" />
          </div>
        </div>
      </div>
    </header>
    <main>
      <section>
        <div class="container">
          <div class="row">
            <div class="col-6 p-5">
              <div class="m-0 row">
                <div class="col-12">
                  <div style="cursor: pointer" class="product-image rounded">
                    <img
                      :src="image"
                      class="img img-responsive shadow w-100"
                      alt=""
                    />
                  </div>
                </div>
              </div>
            </div>
            <div class="col-6 py-5">
              <div class="path">
                <a href="#">Home</a> > <a href="#">Shop</a> >
                <a href="#">{{ title }}</a>
              </div>
              <div class="p-title">
                <h1 class="text-primary">{{ title }}</h1>
              </div>
              <div class="p-short-desc" v-html="shortDescription"></div>
              <div class="price">
                <h1 class="display-3 text-danger">
                  <b>{{ price }}$</b>
                </h1>
              </div>
              <div class="align-items-center d-flex mb-3 stock">
                <div class="m-2 pick">
                  <button
                    @click="substractQte()"
                    style="cursor: pointer"
                    class="
                      border-0
                      bg-secondary
                      px-3
                      py-2
                      rounded
                      subs
                      text-white
                    "
                  >
                    -
                  </button>
                  <input
                    class="
                      bg-light
                      border-0
                      p-0
                      w-25
                      text-center
                      count
                      m
                      px-3
                      py-2
                      rounded
                      text-dark
                    "
                    v-model="qte"
                  />
                  <button
                    @click="addQte()"
                    style="cursor: pointer"
                    class="border-0 add bg-primary px-3 py-2 rounded text-white"
                  >
                    +
                  </button>
                </div>
                <div :class="sotckLevel" class="stock-count text-left">
                  Only {{ stock }} left in stock
                </div>
              </div>
              <div class="actions d-flex">
                <a class="bg-blue btn btn-lg btn-primary m-2"
                  ><i class="fa fa-shopping-cart text-light"></i> Add to cart</a
                >
                <a class="btn btn-lg btn-warning m-2"
                  ><i class="fa fa-shopping-cart"></i> Order now</a
                >
              </div>
            </div>
          </div>
        </div>
      </section>
      <section>
        <div class="container mb-5"><hr class="bg-primary" /></div>
      </section>
      <section>
        <div class="container">
          <div class="row">
            <div class="col text-primary">
              <h1>Description:</h1>
              <div v-html="description"></div>
            </div>
          </div>
        </div>
      </section>
      <section>
        <div class="container mb-5"><hr class="bg-primary" /></div>
      </section>
      <section class="mb-5">
        <div class="container">
          <div class="row">
            <div class="col text-primary">
              <h2>Comments:</h2>
              <form
                v-on:submit.prevent="onSubmit"
                method="post"
                class="bg-light border px-2 py-5 rounded"
              >
                <div class="row">
                  <div class="col-6 form-group mb-3">
                    <input
                      type="text"
                      class="form-control form-control-lg"
                      placeholder="Name..."
                      v-model="commentName"
                    />
                  </div>
                  <div class="col-6 form-group mb-3">
                    <input
                      type="text"
                      class="form-control form-control-lg"
                      placeholder="Email..."
                      v-model="commentEmail"
                    />
                  </div>
                </div>
                <div class="form-group mb-3">
                  <textarea
                    name="#"
                    id="#"
                    class="form-control form-control-lg text-primary"
                    placeholder="Comment..."
                    v-model="commentMessage"
                  ></textarea>
                </div>
                <div class="d-flex form-group mb-3">
                  <button
                    type="submit"
                    @click="addComment()"
                    class="btn btn-lg btn-primary px-5"
                  >
                    Send
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </section>
      <section>
        <div class="container">
          <div class="row">
            <commentCard
              v-for="(comment, index) in comments"
              :name="comment.name"
              :email="comment.email"
              :comment="comment.comment"
              :key="index"
            />
          </div>
        </div>
      </section>
    </main>
  </div>
</template>

<script>
import axios from "axios";
import Menu from "@/components/core-components/menu.vue";
import commentCard from "./core-components/comment-card.vue";
export default {
  components: {
    commentCard,
    Menu,
  },
  data: function () {
    return {
      id: "",
      title: "",
      description: "",
      shortDescription: "",
      comments: [],
      qte: 0,
      stock: 99,
      sotckLevel: "text-info",
      price: 0,
      image: "",
      commentName: "",
      commentEmail: "",
      commentMessage: "",
    };
  },
  created() {
    this.getProductData();
    // Stock color manager
    if (this.stock <= 50) this.sotckLevel = "text-danger";
    if (this.stock > 50 && this.stock <= 100) this.sotckLevel = "text-warning";
    if (this.stock > 100) this.sotckLevel = "text-success";

    // get product id
    this.id = this.$route.params.id;
    console.log("Product id: " + this.id);
    this.getComment();
  },
  methods: {
    substractQte() {
      if (this.qte > 0) {
        --this.qte;
      }
    },
    addQte() {
      if (this.qte < this.stock) ++this.qte;
    },
    getShortDescription(descripiton) {
      if (descripiton.length > 130)
        descripiton = descripiton.substring(0, 130) + "...";
      return descripiton.replace(/(<([^>]+)>)/gi, "");
    },
    async getProductData() {
      alert("dwfcdf");
      let productId = this.$route.params.id;
      await axios
        .get(`${process.env.VUE_APP_ABS_API}/customer/product/${productId}`)
        .then((response) => {
          // console.log(response);
          this.shortDescription = this.getShortDescription(
            response.data.description
          );
          this.id = response.data.id;
          this.title = response.data.name;
          this.description = response.data.description;
          (this.price = response.data.price),
            (this.stock = response.data.qte),
            (this.sotckLevel = "text-info"),
            (this.image = response.data.image);
        });
    },
    async getComment() {
      let productId = this.$route.params.id;
      await axios
        .get(`${process.env.VUE_APP_ABS_API}/user/comment/${productId}`)
        .then((response) => {
          if (response.status == 200) {
            this.comments = response.data;
          }
        });
    },
    async addComment() {
      await axios
        .post(
          `${process.env.VUE_APP_ABS_API}/user/comment`,
          JSON.stringify({
            name: this.commentName,
            email: this.commentEmail,
            comment: this.commentMessage,
            usersId: 1,
            products_id: this.id,
          })
        )
        .then((responce) => {
          if (responce.status == 200) {
            alert("Comment add successfully!");
          }
        });
    },
  },
};
</script>

<style lang="css">
</style>