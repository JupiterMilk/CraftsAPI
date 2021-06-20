/*
  Warnings:

  - Made the column `usersId` on table `comments` required. This step will fail if there are existing NULL values in that column.

*/
-- DropForeignKey
ALTER TABLE `comments` DROP FOREIGN KEY `comments_ibfk_2`;

-- AlterTable
ALTER TABLE `comments` MODIFY `usersId` INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE `comments` ADD FOREIGN KEY (`usersId`) REFERENCES `users`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
