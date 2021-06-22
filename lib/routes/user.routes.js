const express = require('express')
const userRouter = express.Router()
const { add_comment, edit_comment } = require('@controllers/user.controller.js')

userRouter.use((req, res, next) => {
  console.log('hada howa fucker:', Date.now())
  next()
})

userRouter.put('/comment', edit_comment)
userRouter.post('/comment', add_comment)
module.exports = userRouter
