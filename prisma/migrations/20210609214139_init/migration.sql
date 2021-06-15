/*
  Warnings:

  - You are about to alter the column `ipAddr` on the `User` table. The data in that column could be lost. The data in that column will be cast from `UnsignedInt` to `VarChar(250)`.

*/
-- AlterTable
ALTER TABLE `Post` MODIFY `location` VARCHAR(250) NOT NULL;

-- AlterTable
ALTER TABLE `User` MODIFY `ipAddr` VARCHAR(250) NOT NULL;
