const app = require('app')
const userRouter = require('@routes/user.routes.js')
// const customerRouter = require('@routes/customer.routes.js')
const { databaseURL, port } = require('@config/index')
const cors = require('cors')
const morgan = require('morgan')
// const bp = require('body-parser')

const corsOptions = {
  origin: 'http://localhost:3004',
}

// app.use(bp.json())
// app.use(bp.urlencoded({ extended: true }))

app.use(cors(corsOptions))
app.use(morgan('tiny'))
app.set('json spaces', 2)

app.use('/user', userRouter)

// app.use('/customer', customerRouter)

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
