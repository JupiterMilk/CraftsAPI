/*
  Warnings:

  - You are about to alter the column `state` on the `order` table. The data in that column could be lost. The data in that column will be cast from `TinyInt` to `VarChar(11)`.

*/
-- AlterTable
ALTER TABLE `order` MODIFY `code` VARCHAR(11) NOT NULL,
    MODIFY `total_price` VARCHAR(11) NOT NULL,
    MODIFY `state` VARCHAR(11) NOT NULL DEFAULT '',
    MODIFY `users_id` INTEGER NOT NULL DEFAULT 0;

-- AlterTable
ALTER TABLE `products` MODIFY `price` VARCHAR(7) NOT NULL;
