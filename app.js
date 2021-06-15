const express = require('express')

const app = express()

app.get('/', (req, res) => {
  res.status(200).send('Try get /users')
})

app.use((req, res) => {
  res.status(400).send('404', { title: '404 page' })
})

module.exports = app
