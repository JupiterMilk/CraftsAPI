<template>
    <div class="col-12 mb-3">
        <div class="m-0 row">
        <div class="col-auto">
            <div class="comment-avatar">
            <img
                src="/avatar.1a6ff6ea.png"
                alt=""
                class="img img-responsive rounded-circle"
            />
            </div>
        </div>
        <div class="col text-primary">
            <div class="comment-details">
            <h2>{{ name }}</h2>
            <span>{{ email }}</span>
            <p>
                {{ comment }}
            </p>
            </div>
        </div>
        </div>
    </div>
</template>

<script>
export default {
    props:{
        name:String,
        email:String,
        comment:String
    }
}
</script>

<style lang="css">
    
</style>