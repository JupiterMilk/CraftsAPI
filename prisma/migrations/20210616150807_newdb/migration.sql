-- CreateTable
CREATE TABLE `Category` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(45),
    `state` INTEGER,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Order` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `code` INTEGER,
    `total_price` DECIMAL(3, 0),
    `state` INTEGER,
    `Users_id` INTEGER NOT NULL,

    INDEX `fk_Order_Users1_idx`(`Users_id`),
    PRIMARY KEY (`id`, `Users_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Order_has_Products` (
    `Order_id` INTEGER NOT NULL,
    `Products_id` INTEGER NOT NULL,
    `Products_admin_id` INTEGER NOT NULL,
    `Products_Category_id` INTEGER NOT NULL,

    INDEX `fk_Order_has_Products_Order1_idx`(`Order_id`),
    INDEX `fk_Order_has_Products_Products1_idx`(`Products_id`, `Products_admin_id`, `Products_Category_id`),
    PRIMARY KEY (`Order_id`, `Products_id`, `Products_admin_id`, `Products_Category_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Products` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(70),
    `qte` INTEGER,
    `price` DECIMAL(3, 0),
    `Productscol` VARCHAR(45),
    `admin_id` INTEGER NOT NULL,
    `Category_id` INTEGER NOT NULL,

    INDEX `fk_Products_Category1_idx`(`Category_id`),
    INDEX `fk_Products_admin1_idx`(`admin_id`),
    PRIMARY KEY (`id`, `admin_id`, `Category_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Users` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(45),
    `email` VARCHAR(45),
    `password` TEXT,
    `role` INTEGER,
    `phone` VARCHAR(45),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `admin` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(45),
    `email` VARCHAR(45),
    `password` TEXT,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `comments` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(45),
    `email` VARCHAR(45),
    `comment` TEXT,
    `Users_id` INTEGER NOT NULL,
    `Products_id` INTEGER NOT NULL,
    `Products_admin_id` INTEGER NOT NULL,
    `Products_Category_id` INTEGER NOT NULL,

    INDEX `fk_comments_Products1_idx`(`Products_id`, `Products_admin_id`, `Products_Category_id`),
    INDEX `fk_comments_Users_idx`(`Users_id`),
    PRIMARY KEY (`id`, `Users_id`, `Products_id`, `Products_admin_id`, `Products_Category_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Order` ADD FOREIGN KEY (`Users_id`) REFERENCES `Users`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Order_has_Products` ADD FOREIGN KEY (`Order_id`) REFERENCES `Order`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Order_has_Products` ADD FOREIGN KEY (`Products_id`, `Products_admin_id`, `Products_Category_id`) REFERENCES `Products`(`id`, `admin_id`, `Category_id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Products` ADD FOREIGN KEY (`Category_id`) REFERENCES `Category`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Products` ADD FOREIGN KEY (`admin_id`) REFERENCES `admin`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `comments` ADD FOREIGN KEY (`Products_id`, `Products_admin_id`, `Products_Category_id`) REFERENCES `Products`(`id`, `admin_id`, `Category_id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `comments` ADD FOREIGN KEY (`Users_id`) REFERENCES `Users`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
