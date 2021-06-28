<template>
    <div>
        <div class="item">
            <div class="bg-white product-card">
            <div class="thumbnail">
                <router-link :to="{path: '/product/' + id}" class="nav-link">
                <img
                    src="/product.708685fd.png"
                    class="img img-responsive w-100"
                    alt=""
                />
                </router-link>
                <span v-if="isSale == true" class="sale">Sale</span>
                <span @click="addtoCart(id)" class="add-to-cart" data-id="1"
                ><i class="fa fa-cart-arrow-down" aria-hidden="true"></i
                ></span>
            </div>
            <div class="details p-3 text-left w-100">
                <h2 class="h4 text-primary">
                <a :href="id" >{{ title }}</a>
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
export default {
    props:{
        id:Number,
        title:String,
        description:String,
        imageUrl:String,
        isSale:Boolean
    },
    created(){
        // window.localStorage.removeItem('cart')
    },
    methods: {
        addtoCart(id){
            let data = []
            if(window.localStorage.getItem('cart') != null){
                data = JSON.parse(window.localStorage.getItem('cart'));
            }
            let product = {};
            product.id = id,
            product.qte = 1
            let cartHasProduct = true;

            // console.clear();
            data.forEach((p,key) => {
                if(p.id == id){
                    // console.log(id);
                    data[key].qte = p.qte+1;
                    // console.log('found');
                    cartHasProduct = false;
                }
            });

            if(cartHasProduct){
                data.push(product)
            }

            data = JSON.stringify(data)
            window.localStorage.setItem('cart',data)
            
            console.log(window.localStorage.getItem('cart'));

            // alert('Prodcut added to cart successfully!')

        }
    },
}
</script>

<style lang="css">
    
</style>