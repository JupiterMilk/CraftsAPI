/*
  Warnings:

  - You are about to alter the column `state` on the `category` table. The data in that column could be lost. The data in that column will be cast from `Int` to `TinyInt`.
  - You are about to alter the column `state` on the `order` table. The data in that column could be lost. The data in that column will be cast from `Int` to `TinyInt`.

*/
-- AlterTable
ALTER TABLE `category` MODIFY `state` BOOLEAN NOT NULL DEFAULT false;

-- AlterTable
ALTER TABLE `order` MODIFY `state` BOOLEAN NOT NULL DEFAULT false;
