<template>
    <div>
        <div class="container">
      <div class="row">
        <div class="col">
          <Menu dataActive="home"/>
        </div>
      </div>
    </div>
    <div class="container">
      <div class="align-items-center row">
        <div class="col p-inline-end-5">
          <h1 class="mb-3 text-primary">The house of Artisana</h1>
          <p class="mb-3 text-primary">
            Lorem, ipsum dolor sit amet consectetur adipisicing elit. Id,
            repellendus officiis quia sapiente, dolorem placeat blanditiis
            cumque eum delectus ad, quae quis nesciunt veritatis magni! Non
            consectetur magnam eius ducimus! Lorem, ipsum dolor sit amet
            consectetur adipisicing elit. Ad in commodi quia maiores ipsam,
            repudiandae id dolores! Recusandae quod ex similique nesciunt.
          </p>
          <a href="#" class="btn btn-lg btn-primary shadow"
            ><i class="fas fa-shopping-cart" aria-hidden="true"></i> Shop</a
          >
        </div>
        <div class="col">
          <img
            class="img img-responsive"
            src="/hero-aabhaas.14ad7544.png"
            alt=""
          />
        </div>
      </div>
    </div>
    <main>
      <section class="home-categories my-5">
        <div class="container">
          <div class="row">
            <div class="col-8 mx-auto my-5">
              <div class="text-center title">
                <h1 class="text-primary">Our shop categories</h1>
                <p class="text-black">
                  Lorem ipsum dolor sit amet consectetur adipisicing elit.
                  Explicabo doloremque expedita praesentium similique labore
                  vitae. Qui, ullam nostrum pariatur perferendis ut
                  necessitatibus expedita obcaecati eos eum, fugiat veritatis
                  eveniet atque?
                </p>
              </div>
            </div>
          </div>
        </div>
        <div class="container">
          <div class="row">
            <div class="col">
              <div class="grid">
                <categotyCard v-for="(category,index) in categories" :key="index" :title="category.name" :description="category.description" :image="category.image" :id="category.id" />
                <!-- <div class="item">
                  <img
                    class="img img-responsive w-100"
                    src="/home-category-2.64ff63f9.png"
                    alt=""
                  />
                  <div class="details p-3 text-center">
                    <h2 class="text-white">Hand crafted</h2>
                    <p class="mb-3 text-white">
                      Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                      Aut error illum aliquid quo ipsum voluptates, voluptas
                      tempore illo minus beatae qui maxime rerum omnis pariatur
                      dolor minima laudantium magni ipsam!
                    </p>
                    <a href="#" class="btn btn-light">Discover</a>
                  </div>
                </div>
                <div class="item">
                  <img
                    class="img img-responsive w-100"
                    src="/home-category-3.38c0fb33.png"
                    alt=""
                  />
                  <div class="details p-3 text-center">
                    <h2 class="text-white">Hand crafted</h2>
                    <p class="mb-3 text-white">
                      Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                      Aut error illum aliquid quo ipsum voluptates, voluptas
                      tempore illo minus beatae qui maxime rerum omnis pariatur
                      dolor minima laudantium magni ipsam!
                    </p>
                    <a href="#" class="btn btn-light">Discover</a>
                  </div>
                </div>
                <div class="item">
                  <img
                    class="img img-responsive w-100"
                    src="/home-category-4.2ca57f96.png"
                    alt=""
                  />
                  <div class="details p-3 text-center">
                    <h2 class="text-white">Hand crafted</h2>
                    <p class="mb-3 text-white">
                      Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                      Aut error illum aliquid quo ipsum voluptates, voluptas
                      tempore illo minus beatae qui maxime rerum omnis pariatur
                      dolor minima laudantium magni ipsam!
                    </p>
                    <a href="#" class="btn btn-light">Discover</a>
                  </div>
                </div>
                <div class="item">
                  <img
                    class="img img-responsive w-100"
                    src="/home-category-5.8b1efb5f.png"
                    alt=""
                  />
                  <div class="details p-3 text-center">
                    <h2 class="text-white">Hand crafted</h2>
                    <p class="mb-3 text-white">
                      Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                      Aut error illum aliquid quo ipsum voluptates, voluptas
                      tempore illo minus beatae qui maxime rerum omnis pariatur
                      dolor minima laudantium magni ipsam!
                    </p>
                    <a href="#" class="btn btn-light">Discover</a>
                  </div>
                </div> -->
              </div>
            </div>
          </div>
        </div>
      </section>
      <section
        class="home-products my-5"
        style="background-image:url(/home-products.2948dc6d.png);"
      >
        <div class="container">
          <div class="row">
            <div class="col-8 mx-auto my-5">
              <div class="text-center title">
                <h1 class="text-primary">Our latested products</h1>
                <p class="text-black">
                  Lorem ipsum dolor sit amet consectetur adipisicing elit.
                  Explicabo doloremque expedita praesentium similique labore
                  vitae. Qui, ullam nostrum pariatur perferendis ut
                  necessitatibus expedita obcaecati eos eum, fugiat veritatis
                  eveniet atque?
                </p>
              </div>
            </div>
          </div>
        </div>
        <div class="container">
          <div class="row">
              <div class="grid">
                <productCard :isSale="prodcut.sale" :title="prodcut.name" :description="prodcut.description" :imageUrl="prodcut.image" v-for="(prodcut,index) in products" :key="index" :id="prodcut.id"/>
              </div>
          </div>
        </div>
      </section>
      <!-- <section class="home-shop">
        <div class="container">
          <div class="row">
            <div class="col-8 mx-auto my-5">
              <div class="text-center title">
                <h1 class="text-primary">Our client's feedback</h1>
                <p class="text-black">
                  Lorem ipsum dolor sit amet consectetur adipisicing elit.
                  Explicabo doloremque expedita praesentium similique labore
                  vitae. Qui, ullam nostrum pariatur perferendis ut
                  necessitatibus expedita obcaecati eos eum, fugiat veritatis
                  eveniet atque?
                </p>
              </div>
            </div>
          </div>
        </div>
        <div class="container">
          <div class="justify-content-center row">
            <div class="col-8" style="position:relative;">
              <div class="px-2 py-2 slider text-center">
                <div class="slide-item">
                  <img src="/avatar.1a6ff6ea.png" alt="" class="avatar" />
                  <div class="details">
                    <span class="h3">Dummy username</span>
                    <p class="small">
                      Lorem ipsum dolor sit amet consectetur adipisicing elit.
                      Animi cupiditate corrupti nesciunt sint ex labore,
                      veritatis, ea accusantium corporis dolore qui. Accusantium
                      dolores quas illo provident quis aliquid. Optio, quia!
                    </p>
                    <ul>
                      <li class="active d-inline star">
                        <i class="fa fa-star"></i>
                      </li>
                      <li class="active d-inline star">
                        <i class="fa fa-star"></i>
                      </li>
                      <li class="active d-inline star">
                        <i class="fa fa-star"></i>
                      </li>
                      <li class="active d-inline star">
                        <i class="fa fa-star"></i>
                      </li>
                      <li class="d-inline star"><i class="fa fa-star"></i></li>
                    </ul>
                  </div>
                </div>
                <div class="slider-nav">
                  <span class="left"><i class="fa fa-arrow-left"></i></span>
                  <span class="right"><i class="fa fa-arrow-right"></i></span>
                </div>
              </div>
              <div class="slider-dots text-center">
                <ul>
                  <li class="d-inline-block dot"></li>
                  <li class="d-inline-block dot"></li>
                  <li class="active d-inline-block dot"></li>
                  <li class="d-inline-block dot"></li>
                  <li class="d-inline-block dot"></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </section> -->
    </main>
    </div>
</template>
<script>
import axios from 'axios'
import Menu from '@/components/core-components/menu.vue';
import productCard from '@/components/core-components/product-card';
import categotyCard from '@/components/core-components/category-card';
export default {
  data : ()=>{
    return {
      products : [],
      categories : []
    }
  },
    components:{
      Menu,
      productCard,
      categotyCard
  },
  created() {
    this.getProductData()
    this.getCategories()
  },
  methods:{
    async getProductData(){
      await axios.get(`${process.env.VUE_APP_ABS_API}/customer/product/`)
      .then( (response) => {
        // console.log(response.data);
        this.products = response.data
      })
    },
    async getCategories(){
      await axios.get(`${process.env.VUE_APP_ABS_API}/categories/all/5`).then((responce) =>{
        this.categories = responce.data
      })
    }
  }
}
</script>
<style lang="css">
    
</style>