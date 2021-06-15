/*
  Warnings:

  - Added the required column `city` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `country` to the `User` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `User` ADD COLUMN `city` VARCHAR(191) NOT NULL,
    ADD COLUMN `country` VARCHAR(191) NOT NULL,
    ADD COLUMN `postsNumber` INTEGER NOT NULL DEFAULT 0,
    ADD COLUMN `role` ENUM('USER', 'ADMIN') NOT NULL DEFAULT 'USER';
