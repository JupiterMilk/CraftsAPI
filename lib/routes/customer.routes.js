const express = require('express')

const customerRouter = express.Router()
const { add_product, remove_product, get_products } = require('@controllers/customer.controller.js')

customerRouter.post('/product', add_product)
customerRouter.get('/product', get_products)
customerRouter.delete('/product/:id', remove_product)

//
module.exports = customerRouter
