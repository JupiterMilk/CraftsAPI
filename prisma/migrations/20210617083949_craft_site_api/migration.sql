-- CreateTable
CREATE TABLE `admin` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(45) NOT NULL,
    `email` VARCHAR(45) NOT NULL,
    `password` TEXT NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `comments` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(45) NOT NULL,
    `email` VARCHAR(45) NOT NULL,
    `comment` TEXT NOT NULL,
    `Users_id` INTEGER NOT NULL,
    `Products_id` INTEGER NOT NULL,
    `Products_admin_id` INTEGER NOT NULL,
    `Products_Category_id` INTEGER NOT NULL,

    INDEX `fk_comments_Products1_idx`(`Products_id`, `Products_admin_id`, `Products_Category_id`),
    INDEX `fk_comments_Users_idx`(`Users_id`),
    PRIMARY KEY (`id`, `Users_id`, `Products_id`, `Products_admin_id`, `Products_Category_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `category` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(45),
    `state` INTEGER,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `order` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `code` INTEGER NOT NULL,
    `total_price` DECIMAL(3, 0) NOT NULL,
    `state` INTEGER NOT NULL,
    `Users_id` INTEGER NOT NULL,

    INDEX `fk_Order_Users1_idx`(`Users_id`),
    PRIMARY KEY (`id`, `Users_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `order_has_Products` (
    `Order_id` INTEGER NOT NULL,
    `Products_id` INTEGER NOT NULL,
    `Qty` INTEGER NOT NULL,

    INDEX `fk_Order_has_Products_Order_idx`(`Order_id`),
    INDEX `fk_Order_has_Products_Products_idx`(`Products_id`),
    PRIMARY KEY (`Order_id`, `Products_id`, `Qty`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `products` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(70) NOT NULL,
    `qte` INTEGER NOT NULL,
    `price` DECIMAL(3, 0) NOT NULL,
    `admin_id` INTEGER NOT NULL,
    `Category_id` INTEGER NOT NULL,

    INDEX `fk_Products_Category1_idx`(`Category_id`),
    INDEX `fk_Products_admin1_idx`(`admin_id`),
    PRIMARY KEY (`id`, `admin_id`, `Category_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `users` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(45) NOT NULL,
    `email` VARCHAR(45) NOT NULL,
    `password` TEXT NOT NULL,
    `role` VARCHAR(11) NOT NULL DEFAULT 'user',
    `phone` VARCHAR(45),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `comments` ADD FOREIGN KEY (`Products_id`, `Products_admin_id`, `Products_Category_id`) REFERENCES `products`(`id`, `admin_id`, `Category_id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `comments` ADD FOREIGN KEY (`Users_id`) REFERENCES `users`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `order` ADD FOREIGN KEY (`Users_id`) REFERENCES `users`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `order_has_Products` ADD FOREIGN KEY (`Order_id`) REFERENCES `order`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `order_has_Products` ADD FOREIGN KEY (`Products_id`) REFERENCES `products`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `products` ADD FOREIGN KEY (`Category_id`) REFERENCES `category`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `products` ADD FOREIGN KEY (`admin_id`) REFERENCES `admin`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
