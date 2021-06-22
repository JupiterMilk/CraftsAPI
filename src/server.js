const app = require('app')
const userRouter = require('@routes/user.routes.js')
const customerRouter = require('@routes/customer.routes.js')
const { databaseURL, port } = require('@config/index')
const cors = require('cors')
// const bp = require('body-parser')

const corsOptions = {
  origin: 'http://localhost:3004',
}

// app.use(bp.json())
// app.use(bp.urlencoded({ extended: true }))

app.use(cors(corsOptions))
app.set('json spaces', 2)

app.use('/user', userRouter)

app.use('/customer', customerRouter)

app.listen(port, () => {
  console.log(`app listening on port http://${databaseURL}:${port}`)
  console.log('Press Ctrl+C to quit.')
})
