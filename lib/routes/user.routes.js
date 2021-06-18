const express = require('express')
const userRouter = express.Router()
const { add_comment } = require('@controllers/user.controller.js')

// userRouter.post('/comment', add_comment)
userRouter.post('/comment', (req, res) => {
  return res.send(req.body)
})

module.exports = userRouter
