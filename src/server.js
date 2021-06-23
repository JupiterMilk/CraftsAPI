const app = require('app')
const userRouter = require('@routes/user.routes.js')
const customerRouter = require('@routes/customer.routes.js')
const { databaseURL, port } = require('@config/index')
const cors = require('cors')
// const bp = require('body-parser')

const corsOptions = {
  origin: 'http://localhost:8080',
}
// const corsOptions = {
//   origin: (origin, callback) => {
//     if (whitelist.indexOf(origin) !== -1) {
//       callback(null, true)
//     } else {
//       callback(new Error())
//     }
//   }
// }
// app.use(bp.json())
// app.use(bp.urlencoded({ extended: true }))

app.use(cors(corsOptions))
app.set('json spaces', 2)

app.get('/', (req, res) => {
  res.status(200).send('hello mother fucker how are you doing ')
})

app.use('/user', userRouter)

app.use('/customer', customerRouter)

app.listen(port, () => {
  console.log(`app listening on port http://${databaseURL}:${port}`)
  console.log('Press Ctrl+C to quit.')
})
