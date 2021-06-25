const db = require('@utils/db.js')

const add_comment = async (req, res) => {
  const { name, email, comment, usersId, products_id } = req.body
  try {
    const result = await db.comments
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
        await db.$disconnect()
      })
    res.json(result)
  } catch (error) {
    console.error(error)
  }
}
const edit_comment = async (req, res) => {
  const { comment, id } = req.body
  try {
    const user = await db.comments
      .updateMany({
        where: {
          id: parseInt(id, 10),
        },
        data: { comment: comment },
      })
      .catch((e) => {
        throw e
      })
      .finally(async () => {
        await db.$disconnect()
      })
    res.json(user)
  } catch (error) {
    console.error(error)
  }
}
module.exports = { add_comment, edit_comment }
