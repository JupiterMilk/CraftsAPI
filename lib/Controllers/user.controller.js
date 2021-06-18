const { PrismaClient } = require('@prisma/client')
const prisma = new PrismaClient()

const add_comment = async (req, res) => {
  const { name, email, comment, users_id, products_id } = req.body
  try {
    const result = await prisma.comments
      .create({
        data: {
          name,
          email,
          comment,
          users_id,
          products_id,
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

module.exports = { add_comment }
