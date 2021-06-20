/*
  Warnings:

  - The primary key for the `comments` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `users_id` on the `comments` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE `comments` DROP FOREIGN KEY `comments_ibfk_2`;

-- AlterTable
ALTER TABLE `comments` DROP PRIMARY KEY,
    DROP COLUMN `users_id`,
    ADD COLUMN `usersId` INTEGER,
    ADD PRIMARY KEY (`id`, `products_id`);

-- AddForeignKey
ALTER TABLE `comments` ADD FOREIGN KEY (`usersId`) REFERENCES `users`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
