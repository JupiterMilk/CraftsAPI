<template>
    <div>
         <div class="list-paiment-body row">
                      <div class="cart-paiment-img col-4 col-md-4 row">
                        <img
                          :src="img"
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
                          <a href="" class="text-danger"><u>Remove</u></a>
                        </div>
                        <div class="col-sm-2">
                          <div class="cart-paiment-qte">0</div>
                        </div>
                        <div class="col-sm-2">
                          <div class="price">1000$</div>
                        </div>
                      </div>
                    </div>
    </div>
</template>


<script>
export default {
    props:{
      id : Number,
      title : String,
      price : Number,
      img : String 
    }
}
</script>

<style lang="css">
    
</style>