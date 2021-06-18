const express = require('express')
const app = express()
const bodyParser = require('body-parser')

app.use(
  bodyParser.urlencoded({
    extended: true,
  })
)
app.use(bodyParser.json())

app.get('/', (req, res, next) => {
  res.status(200).send('Root home')
})

module.exports = app
