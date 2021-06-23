const express = require('express'),
  app = express(),
  fs = require('fs'),
  morgan = require('morgan')

app.use(
  morgan('combined', {
    stream: fs.createWriteStream('./app.log', { flags: 'a' }),
  })
)
app.get('/test', (req, res) => {
  res.status(200).send('this is just for testing routes')
})
app.use(morgan('combined'))
app.enable('trust proxy')
app.use(express.json({ type: '*/*' }))

module.exports = app
