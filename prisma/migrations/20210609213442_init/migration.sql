/*
  Warnings:

  - You are about to drop the column `authorId` on the `Post` table. All the data in the column will be lost.
  - You are about to drop the column `content` on the `Post` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `Post` table. All the data in the column will be lost.
  - You are about to drop the column `title` on the `Post` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `Post` table. All the data in the column will be lost.
  - You are about to drop the `Profile` table. If the table is not empty, all the data it contains will be lost.
  - A unique constraint covering the columns `[location]` on the table `Post` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `location` to the `Post` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userId` to the `Post` table without a default value. This is not possible if the table is not empty.
  - Added the required column `ipAddr` to the `User` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `Post` DROP FOREIGN KEY `Post_ibfk_1`;

-- DropForeignKey
ALTER TABLE `Profile` DROP FOREIGN KEY `Profile_ibfk_1`;

-- AlterTable
ALTER TABLE `Post` DROP COLUMN `authorId`,
    DROP COLUMN `content`,
    DROP COLUMN `createdAt`,
    DROP COLUMN `title`,
    DROP COLUMN `updatedAt`,
    ADD COLUMN `imgUrl` TEXT,
    ADD COLUMN `location` INTEGER NOT NULL,
    ADD COLUMN `uploadedAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    ADD COLUMN `userId` INTEGER NOT NULL;

-- AlterTable
ALTER TABLE `User` ADD COLUMN `ipAddr` INTEGER UNSIGNED NOT NULL,
    MODIFY `email` VARCHAR(191);

-- DropTable
DROP TABLE `Profile`;

-- CreateIndex
CREATE UNIQUE INDEX `Post.location_unique` ON `Post`(`location`);

-- AddForeignKey
ALTER TABLE `Post` ADD FOREIGN KEY (`userId`) REFERENCES `User`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
