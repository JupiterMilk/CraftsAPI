<template>
  <div>
    <header>
      <div class="container">
        <div class="row">
          <div class="col">
            <Menu dataActive="home"/>
          </div>
        </div>
      </div>
    </header>
    <main>
      <section class="cart-paiment">
        <div class="container">
          <div class="row">
            <div class="col-12">
              <h1 class="m-5 mb-0 text-primary">carte :</h1>
              <div class="row">
                <div class="col-12 col-lg-7 col-md-12 d-flex">
                  <div class="card-body">
                    <Paiment v-for="(prodcut,index) in carProducts" :key="index" :parentHandler="countTotal" :id="prodcut.id" :qte="prodcut.qte" />
                  </div>
                </div>
                <div class="col-lg-4 col-md-12 mb-3 mt-5">
                  <div class="card-paiment-body mt-2">
                    <div
                      class="align-items-center card-paiment d-flex justify-content-between p-3"
                    >
                      <h3 class="m-1">Total Cart :</h3>
                      <h3 class="m-1 price">{{ totalCart }}$</h3>
                    </div>
                    <p class="card-text mt-2">
                      Lorem ipsum dolor sit amet, consetetur sadipscing elitr,
                      sed diam nonumy eirmod tempor invidunt ut labore et dolore
                      magna aliquyam erat, sed diam voluptua. At vero eos et
                      accusam et justo duo dolores et ea rebum. Stet clita kasd
                      gubergren, no sea takimata sanctus est Lorem ipsum dolor
                      sit amet. Lorem ipsum dolor sit amet
                    </p>
                    <a href="#" class="btn btn-paiment p-3"
                      ><span>Confirm cart</span></a
                    >
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
    </main>
  </div>
</template>

<script>
// import axios from 'axios';
import Menu from '@/components/core-components/menu.vue';
// import axios from 'axios';
import Paiment from './core-components/cart-paiment.vue';

export default {
  data : ()=>{
    return {
      carProducts : [],
      totalCart:0,
    }
  },
  created(){
    
  
    this.getCartData()
  },
  components:{
    Paiment,
    Menu
  },
  methods:{
    getCartData(){
      let cart = window.localStorage.getItem('cart');
      cart = JSON.parse(cart)
      this.carProducts = cart
    },
    countTotal(price){
      this.total += price
    }

  }

}
</script>

<style lang="css">
  
</style>