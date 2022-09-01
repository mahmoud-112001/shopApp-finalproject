class Shirts_model {
  int? id;
  String? name;
  String? Description;
  dynamic price;
  String? image;
  bool? isFavorite;
  dynamic Rating;
  String? category;

 Shirts_model(
      {this.id,
        this.name,
        this.Description,
        this.price,
        this.image,
        this.isFavorite,
        this.Rating,
        this.category, });
}

List<Shirts_model> shirtlist = [
  Shirts_model(
    id: 1,
    name: "Basic black shirt",
    Description:
    "Super-soft, subtle styling, and amazing quality. Our plain Men's Organic Cotton T-shirts are designed for everyday comfort and built to last. We've spent a decade obsessing over the perfect weight, the perfect fit. So, whether you need some extra soft base layers, a breathable tee for the gym, or just something subtle that looks great solo when the sun comes out, we think you'll love them. Also available in packs, so you've got some super soft essential t-shirts sorted for every day of the week.",
    price: "£12",
    image: "product_Images/p1.png",
    category: "Men",
    isFavorite: false,
    Rating:4.5,
  ),
  Shirts_model(
    id: 2,
    name: " T-SHIRT SLOUCH FIT WITH PRINT",
    Description:
    " Perfect for those summer days riding when you just don’t want the sun too go down ,PETA-Approved Vegan 100% Organic Cotton.",
    price: "£16.66",
    image: "product_Images/p2.webp",
    isFavorite: false,
    category: "Men",
    Rating:3.5,
  ),
  Shirts_model(
    id: 3,
    name: " Sport Clothes Mens T Shirt",
    Description:
    "Brand: Loyalty Vibes ,Cotton | Poly Blends ,Relaxed fit tee .Scratch free neck label,True to size, Made in USA",
    price: "£35.99",
    image: "product_Images/p3.webp",
    isFavorite: false,
    category: "Men",
    Rating:4.5,
  ),
  Shirts_model(
    id: 4,
    name: " Basic printed shirt",
    Description:
    "BRAND T-SHIRT Soft, timeless-fitting cotton tee with classic Eleveight logo.",
    price: "£24",
    image: "product_Images/p4.png",
    isFavorite: false,
    category: "Men",
    Rating: 5,
  ),
  Shirts_model(
      id: 5,
      name: "Multi color shirt ",
      Description:
      "Product Details,Fabric Type100% Cotton,Closure TypePull On,Sleeve TypeShort Sleeve,Fit TypeRegular Fit",
      price: "£19.99",
      image: "product_Images/p5.png",
      isFavorite: false,
      Rating:4,
      category: "Men"),
  Shirts_model(
    id: 6,
    name: " comfy shirt for womens",
    Description:
    "Our Upperfit performance t-shirt is a soft, lightweight fabric that is perfect during outdoor workouts or as a baselayer .  It includes Enhanced wicking fabric that helps keep you dry...",
    price: "£19.99",
    image: "product_Images/p6.png",
    isFavorite: false,
    Rating:4.5,
    category: "woman",
  ),
  Shirts_model(
    id: 7,
    name: " Women’s fitted v-neck t-shirt",
    Description:
    "This women’s fitted v-neck t-shirt feels snug, but not too tight—ideal to wear by itself or as part of a layered look. It’s made of soft, premium quality organic cotton. Don’t spend all day picking out clothes—go with the quintessential basics!",
    price: "£56",
    image: "product_Images/p7.webp",
    isFavorite: false,
    Rating:3.6,
    category: "woman",
  ),
  Shirts_model(
    id: 8,
    name: " Women’s Recycled V-Neck T-Shirt",
    Description:
    "This women’s fitted v-neck t-shirt feels snug, but not too tight—ideal to wear by itself or as part of a layered look. It’s made of soft, premium quality organic cotton. Don’t spend all day picking out clothes—go with the quintessential basics",
    price: "£20.48",
    image: "product_Images/p8.webp",
    isFavorite: false,
    Rating:4.8,
    category: "woman",
  ),
  Shirts_model(
    id: 9,
    name: " LOVE & SQUALOR SHIRTS",
    Description:
    "The “Love & Squalor” dresses on a line are in Women’s burgandy with silver writing.  We have a few of the Men’s Sunshine Yellow and Warm Grey, but we have restocked in the Unisex Pale Pink and  the Organic Cotton Natural White.The “First Crush” t-shirt (based on a poster design) is a unisex black 100% spun cotton and fits true to size.The Woman’s T-shirt (grey in photo) is now burgandy with silver ink of the dresses on a line.All are a nice soft 100% ring spun cotton.Returns and Exchanges on unworn tee's always good! ",
    price: "£30",
    image: "product_Images/p9.png",
    isFavorite: false,
    Rating:5,
    category: "woman",
  ),
  Shirts_model(
    id: 10,
    name: " Womens Criss Cross V-neck shirt ",
    Description:
    "95% Polyester, 5% Spandex.The fabric is very soft and stretchy, which makes it light and ideal for summer weather but heavy enough.Hand wash and they dry quickly with little or no ironing. No shrinkage.",
    price: "£50",
    image: "product_Images/p10.png",
    Rating:4.5,
    isFavorite: false,
    category: "woman",
  ),

];
