<template>
  <div v-if="isHidden == true" class="item-parent">
    <div class="item">
      <div class="bg-white product-card">
        <div class="thumbnail">
          <router-link :to="{ path: '/product/' + id }" class="nav-link">
            <img :src="imageUrl" class="img img-responsive w-100" alt="" />
          </router-link>
          <span v-if="isSale == true" class="sale">Sale</span>
          <span @click="addtoCart(id)" class="add-to-cart"
            ><i class="fa fa-cart-arrow-down" aria-hidden="true"></i
          ></span>
        </div>
        <div class="details p-3 text-left w-100">
          <h2 class="h4 text-primary">
            <a :href="id">{{ title }}</a>
          </h2>
          <p class="small">
            {{ description }}
          </p>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import axios from "axios";
export default {
  props: {
    id: Number,
  },
  data: () => {
    return {
      title: "",
      description: "",
      imageUrl: "",
      isSale: "",
      isHidden: false,
    };
  },
  created() {
    // window.localStorage.removeItem('cart')
  },
  mounted() {
    this.getProductData();
  },
  methods: {
    addtoCart(id) {
      let data = [];
      if (window.localStorage.getItem("cart") != null) {
        data = JSON.parse(window.localStorage.getItem("cart"));
      }
      let product = {};
      (product.id = id), (product.qte = 1);
      let cartHasProduct = true;

      // console.clear();
      data.forEach((p, key) => {
        if (p.id == id) {
          // console.log(id);
          data[key].qte = p.qte + 1;
          // console.log('found');
          cartHasProduct = false;
        }
      });

      if (cartHasProduct) {
        data.push(product);
      }

      data = JSON.stringify(data);
      window.localStorage.setItem("cart", data);

      console.log(window.localStorage.getItem("cart"));

      // alert('Prodcut added to cart successfully!')
    },
    getShortText(descripiton, size) {
      if (descripiton.length > size)
        descripiton = descripiton.substring(0, size) + "...";
      return descripiton.replace(/(<([^>]+)>)/gi, "");
    },
    async getProductData() {
      let id = this.id;
      await axios
        .get(`${process.env.VUE_APP_ABS_API}/customer/product/${id}`)
        .then((response) => {
          if (response.status == 200) {
            this.isHidden = true;
            this.description = this.getShortText(response.data.description, 30);
            this.id = response.data.id;
            this.title = this.getShortText(response.data.name, 15);
            this.imageUrl = response.data.image;
          }
        });
    },
  },
};
</script>

<style lang="css">
.item-parent,
.item-parent .item,
.item-parent .item > div {
  height: 100%;
}
</style>