const { PrismaClient } = require('@prisma/client')
const prisma = new PrismaClient()

const add_comment = async (req, res) => {
  const { name, email, comment, usersId, products_id } = req.body
  try {
    const result = await prisma.comments
      .create({
        data: {
          name,
          email,
          comment,
          usersId,
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
const edit_comment = async (req, res) => {
  const { comment, id } = req.body
  try {
    const user = await prisma.comments
      .update({
        where: {
          id: parseInt(id, 10),
        },
        data: { comment: comment },
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
module.exports = { add_comment, edit_comment }