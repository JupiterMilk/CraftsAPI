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
  try {
    const result = await prisma.products
      .deleteMany({
        where: {
          id: {
            equals: parseInt(id, 10),
          },
        },
      })
      .catch((e) => {
        throw e
      })
      .finally(async () => {
        await prisma.$disconnect()
      })
    if (result.count === 1) {
      res.status(200).json('Your product has been removed successfully')
    } else {
      res.status(200).json('no product found!')
    }
  } catch (error) {
    console.error(error)
  }
}
const get_products = async (req, res) => {
  try {
    const result = await prisma.products
      .findMany()
      .catch((e) => {
        throw e
      })
      .finally(async () => {
        await prisma.$disconnect()
      })
    res.status(200).json(result)
  } catch (error) {
    console.error(error)
  }
}
module.exports = { add_product, remove_product, get_products }
