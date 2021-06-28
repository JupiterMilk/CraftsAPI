<template>
   <div>
        <div class="container">
            <div class="row">
                <div class="col">
                    <nav class="navbar navbar-expand-lg">
                          <a class="navbar-brand" href="#"><img class="d-none d-md-block" src="./logo.png" alt="logo"></a>
                          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                          </button>
                          <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav m-auto mb-2 mb-lg-0">
                              <li class="nav-item mx-3">
                                <a class="nav-link active" aria-current="page" href="#">Home</a>
                              </li>
                              <li class="nav-item mx-3"><a class="nav-link" href="#">Shop</a></li>
                              <li class="nav-item mx-3"><a class="nav-link" href="#">Contact</a></li>
                              <li class="nav-item mx-3"><a class="nav-link" href="#">About us</a></li>
                            </ul>
                            <ul class="navbar-nav">
                                <li class="nav-item"><a class="nav-link text-white mx-4 cart-icon" href="#"><i class="fa fa-shopping-cart"></i><span class="cart-badge">1</span></a></li>
                                <li class="nav-item"><a class="nav-link text-white btn-success rounded-pill shadow px-4" href="#">Login</a></li>
                            </ul>
                          </div>
                      </nav>
                </div>
            </div>
        </div>
      <section class="cart-paiment ">
        <div class="container">
          <div class="row">
            <div class="col-12">
             <h1 class="text-primary mb-0 m-5">carte :</h1>
              <div class="row ">
                <div class=" col-md-12 col-12 col-lg-7   d-flex  ">
                  <div class="card-body ">
                      <div class="row list-paiment-body">
                          <div class="col-md-4 col-4  row cart-paiment-img">
                              <img src="./Rectangle 37.png" class="card-img-top h-100" alt="...">
                          </div>
                          <div class="d-flex justify-content-between mt-3 col-sm-8 col-md-8 col-8">  
                            <div class=" col-sm-6">
                              <h1 class="card-title mb-2 ">Dummy product title</h1>
                              <p class="card-text mb-5 ">PRICE: <span class="price">500$</span></p>
                                <a href="#" class="text-danger"><u>Remove</u></a>
                            </div>
                            <div class="col-sm-2 ">
                                <div class="cart-paiment-qte">2</div>
                            </div>
                            <div class="col-sm-2 ">
                                <div class="price">1000$</div>
                            </div>
                          </div>  
                      </div>
                      <div class="row list-paiment-body">
                        <div class="col-md-4 col-4  row cart-paiment-img">
                            <img src="./Rectangle 37.png" class="card-img-top h-100" alt="...">
                        </div>
                        <div class="d-flex justify-content-between mt-3 col-sm-8 col-md-8 col-8">  
                          <div class=" col-sm-6">
                            <h1 class="card-title mb-2 ">Dummy product title</h1>
                            <p class="card-text mb-5 ">PRICE: <span class="price">500$</span></p>
                              <a href="#" class="text-danger"><u>Remove</u></a>
                          </div>
                          <div class="col-sm-2 ">
                              <div class="cart-paiment-qte">2</div>
                          </div>
                          <div class="col-sm-2 ">
                              <div class="price">1000$</div>
                          </div>
                        </div>  
                    </div>
                    <div class="row list-paiment-body">
                      <div class="col-md-4 col-4  row cart-paiment-img">
                          <img src="./Rectangle 37.png" class="card-img-top h-100" alt="...">
                      </div>
                      <div class="d-flex justify-content-between mt-3 col-sm-8 col-md-8 col-8">  
                        <div class=" col-sm-6">
                          <h1 class="card-title mb-2 ">Dummy product title</h1>
                          <p class="card-text mb-5 ">PRICE: <span class="price">500$</span></p>
                            <a href="#" class="text-danger"><u>Remove</u></a>
                        </div>
                        <div class="col-sm-2 ">
                            <div class="cart-paiment-qte">2</div>
                        </div>
                        <div class="col-sm-2 ">
                            <div class="price">1000$</div>
                        </div>
                      </div>  
                  </div>
                  </div>   
                </div>               
                  <div class="col-md-12 col-lg-4 mt-5 mb-3">
                      <div class="mt-2 card-paiment-body">
                        <div class="d-flex p-3 justify-content-between align-items-center card-paiment">
                            <h3 class="m-1">Total Cart :</h3>
                            <h3 class="m-1 price">200$</h3>
                        </div>
                        <p class="card-text mt-2">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet</p>
                        <a href="#" class="btn btn-paiment p-3"><span>Confirm cart</span></a>
                      </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
      </section>
    </div> 
</template>

<script>
export default {
    
}
</script>

<style lang="css">
    
</style>