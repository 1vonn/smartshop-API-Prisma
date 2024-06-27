import { Router } from "express";
import { PrismaClient } from "@prisma/client";
const router = Router();
const prisma = new PrismaClient();

router.get("/", async(req, res)=>{
    try{
        const products = await prisma.product.findMany();
        res.status(200).json(products);
    } catch(e) {
        res.status(500).json({ success: false, message: e.message})
    }
})

router.get("/id", async(req, res)=>{
    const { id } = req.params;
  try {
    const product = await prisma.product.findUnique({
      where: { id: parseInt(id) },
    });
    if (product) {
      res.json(product);
    } else {
      res.status(404).json({ success: false, message: "Product not found" });
    }
  } catch (e) {
    res.status(500).json({ success: false, message: e.message });
  }
});


router.post("/", async (req, res)=>{
    try{
        const{productTitle, productThumbnail, productDescription, productCost, onOffer } = req.body;
        const newProduct = await prisma.product.create({
            data:{
                productTitle,
                productThumbnail,
                productDescription,
                productCost,
                onOffer

            }

        })
        res.status(201).json(newProduct);
    }
    catch (e) {
        res.status(500).json({success: false, message: e.message})
    }
    
})

router.patch("/:id",async (req, res)=>{
    const { id } = req.params;
  const { productTitle, productThumbnail, productDescription, productCost, onOffer } = req.body;
  try {
    const updatedProduct = await prisma.product.update({
      where: { id: parseInt(id) },
      data: {
        productTitle,
        productThumbnail,
        productDescription,
        productCost,
        onOffer
      }
    });
    res.status(200).json(updatedProduct);
  } catch (e) {
    res.status(500).json({ success: false, message: e.message });
  }
});


router.delete("/id", async(req, res)=>{
    const { id } = req.params;
  try {
    await prisma.product.delete({
      where: { id: parseInt(id) },
    });
    res.status(204).send();
  } catch (e) {
    res.status(500).json({ success: false, message: e.message });
  }
});
export default router;