const express = require('express')
const customerRouter = express.Router()
const {
  user_checkout,
  get_cart,
  add_product,
  change_product_qte,
  remove_product,
} = require('@controllers')

customerRouter.get('/checkout', user_checkout)
customerRouter.get('/cart', get_cart)
customerRouter.post('/product', add_product)
customerRouter.put('/product/:id', change_product_qte)
customerRouter.delete('/product/:id', remove_product)

module.exports = customerRouter
