const express = require('express')
const passport = require('passport')
require('@middleware/passport')

const requireAuth = passport.authenticate('jwt', {
  session: false,
  // successRedirect: '/customer/product',
  // failureRedirect: '/customer/auth/login',
})
const requireSignIn = passport.authenticate('local', {
  session: false,
  // successRedirect: '/customer/product',
  // failureRedirect: '/customer/auth/login',
})

const customerRouter = express.Router()
const { add_product, remove_product, get_products } = require('@controllers/customer.controller.js')
const {
  auth_signup,
  auth_login,
  auth_logout,
  auth_password_reset,
  auth_password_verify,
} = require('@controllers/auth.controller.js')

customerRouter.post('/product', add_product)
customerRouter.get('/product', get_products)
customerRouter.delete('/product/:id', remove_product)

// auth
customerRouter.post('/auth/login', requireSignIn, auth_login)
customerRouter.post('/auth/signup', auth_signup)
customerRouter.get('/auth/user', requireAuth, (req, res) => {
  res.send({ user: req.user })
})
customerRouter.post('/auth/logout', auth_logout)
customerRouter.post('/auth/password/reset', auth_password_reset)
// customerRouter.post('/auth/password/verify', auth_password_verify)

module.exports = customerRouter
