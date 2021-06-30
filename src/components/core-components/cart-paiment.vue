<template>
    <div>
         <div class="list-paiment-body row">
                      <div class="cart-paiment-img col-4 col-md-4 row">
                        <img
                          :src="image"
                          class="card-img-top h-100"
                          alt="..."
                        />
                      </div>
                      <div
                        class="col-8 col-md-8 col-sm-8 d-flex justify-content-between mt-3"
                      >
                        <div class="col-sm-6">
                          <h1 class="card-title mb-2">{{title}}</h1>
                          <p class="card-text mb-5">
                            PRICE: <span class="price">{{price}}$</span>
                          </p>
                          <a :href="id" class="text-danger"><u>Remove</u></a>
                        </div>
                        <div class="col-sm-2">
                          <div class="cart-paiment-qte">{{ qte }}</div>
                        </div>
                        <div class="col-sm-2">
                          <div class="price">{{ totalPrice }}$</div>
                        </div>
                      </div>
                    </div>
    </div>
</template>


<script>
import axios from 'axios'
export default {
    props:{
      id:Number,
      qte:Number,
      parentHandler:Function
    },
    data: ()=>{
      return {
        image:'https://flatsome3.uxthemes.com/wp-content/uploads/woocommerce-placeholder.png',
        title:"dummy product",
        price:0.00,
        totalPrice : 0.00,
      }
    },
    created(){
      this.getProductData()
    },
    methods:{
      async getProductData(){
        await axios.get(`${process.env.VUE_APP_ABS_API}/customer/product/${this.id}`).then((response)=>{
          if(response.status == 200){
            this.image = response.data.image
            this.title = response.data.title
            this.price = response.data.price.replace('$','')
            this.totalPrice = parseFloat(this.qte) * parseFloat(this.price)
            this.parentHandler(this.totalPrice)
          }
        })
      }
    }
}
</script>

<style lang="css">
    
</style>