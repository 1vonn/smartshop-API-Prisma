-- CreateTable
CREATE TABLE "Products_table" (
    "id" TEXT NOT NULL,
    "productTitle" TEXT NOT NULL,
    "productThumbnail" TEXT NOT NULL,
    "productDescription" TEXT NOT NULL,
    "productCost" INTEGER NOT NULL,
    "onOffer" BOOLEAN NOT NULL,

    CONSTRAINT "Products_table_pkey" PRIMARY KEY ("id")
);
