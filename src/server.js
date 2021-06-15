const app = require('app')
const Route = require('@routes/router.js')
const { databaseURL, port } = require('@config/index')
const cors = require('cors')
const morgan = require('morgan')
var corsOptions = {
  origin: 'http://localhost:3004',
}
app.use(cors(corsOptions))
app.use(morgan('tiny'))
app.use(Route)

app.listen(port, () => {
  console.log(`app listening on port http://${databaseURL}:${port}!`)
})
