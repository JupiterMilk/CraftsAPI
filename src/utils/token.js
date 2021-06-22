const jwt = require('jsonwebtoken')
const { secret } = require('@config/index')

const userToken = (user) => {
  const timestamp = new Date().getTime()
  return jwt.sign({ sub: user.id, at: timestamp }, secret)
}

module.exports = { userToken }
