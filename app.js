const express = require('express')

const app = express()

app.get('/', function (req, res, next) {
  res.status(200).send('Try get /users')
})

module.exports = app
