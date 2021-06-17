const { PrismaClient } = require('@prisma/client')
const prisma = new PrismaClient()

const create_user = async (req, res) => {
  const { name, email, password, phone } = req.body
  try {
    const result = await prisma.users
      .create({
        data: {
          name,
          email,
          password,
          phone,
        },
      })
      .catch((e) => {
        throw e
      })
      .finally(async () => {
        await prisma.$disconnect()
      })
    res.json(result)
  } catch (error) {
    console.error(error)
  }
}
const get_allUsers = async (req, res) => {
  try {
    const users = await prisma.users
      .findMany()
      .catch((e) => {
        throw e
      })
      .finally(async () => {
        await prisma.$disconnect()
      })
    res.status(200).json(users)
  } catch (error) {
    console.error(error)
  }
}

const delete_user = async (req, res) => {
  const { id } = req.params
  try {
    const user = await prisma.users
      .delete({
        where: {
          id: parseInt(id, 10),
        },
      })
      .catch((e) => {
        throw e
      })
      .finally(async () => {
        await prisma.$disconnect()
      })
    res.json(user)
  } catch (error) {
    console.error(error)
  }
}
const get_user = async (req, res) => {
  const { id } = req.params
  try {
    const user = await prisma.users
      .findUnique({
        where: {
          id: parseInt(id, 10),
        },
      })
      .catch((e) => {
        throw e
      })
      .finally(async () => {
        await prisma.$disconnect()
      })
    res.status(200).json(user)
  } catch (error) {
    console.error(error)
  }
}

module.exports = { get_user, get_allUsers, delete_user, create_user }
