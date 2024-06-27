/*
  Warnings:

  - You are about to drop the column `onOffer` on the `Products_table` table. All the data in the column will be lost.
  - You are about to drop the column `productCost` on the `Products_table` table. All the data in the column will be lost.
  - You are about to drop the column `productDescription` on the `Products_table` table. All the data in the column will be lost.
  - You are about to drop the column `productThumbnail` on the `Products_table` table. All the data in the column will be lost.
  - You are about to drop the column `productTitle` on the `Products_table` table. All the data in the column will be lost.
  - Added the required column `on_offer` to the `Products_table` table without a default value. This is not possible if the table is not empty.
  - Added the required column `product_Description` to the `Products_table` table without a default value. This is not possible if the table is not empty.
  - Added the required column `product_Thumbnail` to the `Products_table` table without a default value. This is not possible if the table is not empty.
  - Added the required column `product_Title` to the `Products_table` table without a default value. This is not possible if the table is not empty.
  - Added the required column `product_cost` to the `Products_table` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Products_table" DROP COLUMN "onOffer",
DROP COLUMN "productCost",
DROP COLUMN "productDescription",
DROP COLUMN "productThumbnail",
DROP COLUMN "productTitle",
ADD COLUMN     "on_offer" BOOLEAN NOT NULL,
ADD COLUMN     "product_Description" TEXT NOT NULL,
ADD COLUMN     "product_Thumbnail" TEXT NOT NULL,
ADD COLUMN     "product_Title" TEXT NOT NULL,
ADD COLUMN     "product_cost" INTEGER NOT NULL;
