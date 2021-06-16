/*
  Warnings:

  - You are about to drop the column `Productscol` on the `Products` table. All the data in the column will be lost.
  - Made the column `code` on table `Order` required. This step will fail if there are existing NULL values in that column.
  - Made the column `total_price` on table `Order` required. This step will fail if there are existing NULL values in that column.
  - Made the column `state` on table `Order` required. This step will fail if there are existing NULL values in that column.
  - Made the column `name` on table `Products` required. This step will fail if there are existing NULL values in that column.
  - Made the column `qte` on table `Products` required. This step will fail if there are existing NULL values in that column.
  - Made the column `price` on table `Products` required. This step will fail if there are existing NULL values in that column.
  - Made the column `name` on table `Users` required. This step will fail if there are existing NULL values in that column.
  - Made the column `email` on table `Users` required. This step will fail if there are existing NULL values in that column.
  - Made the column `password` on table `Users` required. This step will fail if there are existing NULL values in that column.
  - Made the column `role` on table `Users` required. This step will fail if there are existing NULL values in that column.
  - Made the column `name` on table `admin` required. This step will fail if there are existing NULL values in that column.
  - Made the column `email` on table `admin` required. This step will fail if there are existing NULL values in that column.
  - Made the column `password` on table `admin` required. This step will fail if there are existing NULL values in that column.
  - Made the column `name` on table `comments` required. This step will fail if there are existing NULL values in that column.
  - Made the column `email` on table `comments` required. This step will fail if there are existing NULL values in that column.
  - Made the column `comment` on table `comments` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE `Order` MODIFY `code` INTEGER NOT NULL,
    MODIFY `total_price` DECIMAL(3, 0) NOT NULL,
    MODIFY `state` INTEGER NOT NULL;

-- AlterTable
ALTER TABLE `Products` DROP COLUMN `Productscol`,
    MODIFY `name` VARCHAR(70) NOT NULL,
    MODIFY `qte` INTEGER NOT NULL,
    MODIFY `price` DECIMAL(3, 0) NOT NULL;

-- AlterTable
ALTER TABLE `Users` MODIFY `name` VARCHAR(45) NOT NULL,
    MODIFY `email` VARCHAR(45) NOT NULL,
    MODIFY `password` TEXT NOT NULL,
    MODIFY `role` VARCHAR(11) NOT NULL;

-- AlterTable
ALTER TABLE `admin` MODIFY `name` VARCHAR(45) NOT NULL,
    MODIFY `email` VARCHAR(45) NOT NULL,
    MODIFY `password` TEXT NOT NULL;

-- AlterTable
ALTER TABLE `comments` MODIFY `name` VARCHAR(45) NOT NULL,
    MODIFY `email` VARCHAR(45) NOT NULL,
    MODIFY `comment` TEXT NOT NULL;
