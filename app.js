const express = require('express'),
  app = express(),
  fs = require('fs'),
  morgan = require('morgan')

app.use(
  morgan('combined', {
    stream: fs.createWriteStream('./app.log', { flags: 'a' }),
  })
)
app.use(morgan('combined'))
app.enable('trust proxy')
app.use(express.json({ type: '*/*' }))

app.get('/', (req, res) => {
  res.status(200).send('Root home')
})

module.exports = app
