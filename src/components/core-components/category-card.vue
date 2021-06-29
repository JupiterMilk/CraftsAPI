<template>
        <div class="item">
            <img
            class="img img-responsive w-100"
            :src="image"
            alt=""
            />
            <div class="details p-3 text-center">
            <h2 class="text-white">{{title}}</h2>
            <p class="mb-3 text-white">
                {{ description }}
            </p>
            <router-link :to="{path: '/shop/category/' + id}" class="btn btn-light" >Discover</router-link>
            </div>
        </div>
</template>

<script>
export default {
    props:{
        title:String,
        description:String,
        id:Number,
        image:String,
    },
    mounted:{

    }
}
</script>
<style lang="css">
    
</style>