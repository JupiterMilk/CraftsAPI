const app = require('app')
const Route = require('@routes/router.js')
const { databaseURL, port } = require('@config/index')
const cors = require('cors')
const morgan = require('morgan')

const corsOptions = {
  origin: 'http://localhost:3004',
}

app.use(cors(corsOptions))
app.use(morgan('tiny'))
app.use(Route)
app.set('json spaces', 2)

// app.use((req, res, next) => {
//   console.log('Time:', Date.now())
//   next()
// })
// app.use('/', (req, res, next) => {
//   console.log('Request Type:', req.method)
//   next()
// })

app.listen(port, () => {
  console.log(`app listening on port http://${databaseURL}:${port}`)
})
