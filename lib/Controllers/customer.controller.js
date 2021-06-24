const { PrismaClient } = require('@prisma/client')
const prisma = new PrismaClient()

const add_product = async (req, res) => {
  const { name, qte, description, image, sale, price, admin_id, category_id } = req.body
  try {
    const result = await prisma.products
      .create({
        data: {
          name,
          qte,
          description,
          image,
          sale,
          price,
          admin_id,
          category_id,
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

const remove_product = async (req, res) => {
  const { id } = req.params
  console.log(req.params)
  try {
    const result = await prisma.products
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
    res.json(result)
  } catch (error) {}
}
module.exports = { add_product, remove_product }
