process.env.NODE_ENV = process.env.NODE_ENV || 'development'

require('dotenv').config({ path: `.env.${process.env.NODE_ENV}` })
// if (envFound.error) {
//   throw new Error("⚠️  Couldn't find .env file  ⚠️")
// }
module.exports = {
  port: parseInt(process.env.PORT, 10),
  databaseURL: process.env.DATABASE_URI,
  secret: process.env.JWT_SECRET,
  sgKEY: process.env.SENDGRID_API_KEY,
  emailTo: process.env.emailTo,
  emailForm: process.env.emailFrom,
}
