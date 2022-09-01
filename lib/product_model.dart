class ProductModel {
  int? id;
  String? name;
  String? Description;
  dynamic price;
  String? image;
  bool? isFavorite;
  dynamic Rating;
  String? category;

  ProductModel({
    this.id,
    this.name,
    this.Description,
    this.price,
    this.image,
    this.isFavorite,
    this.Rating,
    this.category,
  });
}

List<ProductModel> Productlist = [
  ProductModel(
    id: 1,
    name: "Basic black shirt",
    Description:
        "Super-soft, subtle styling, and amazing quality. Our plain Men's Organic Cotton T-shirts are designed for everyday comfort and built to last. We've spent a decade obsessing over the perfect weight, the perfect fit. So, whether you need some extra soft base layers, a breathable tee for the gym, or just something subtle that looks great solo when the sun comes out, we think you'll love them. Also available in packs, so you've got some super soft essential t-shirts sorted for every day of the week.",
    price: "£12",
    image: "product_Images/p1.png",
    category: "Men",
    isFavorite: false,
    Rating: 4.5,
  ),
  ProductModel(
    id: 2,
    name: " T-SHIRT SLOUCH FIT WITH PRINT",
    Description:
        " Perfect for those summer days riding when you just don’t want the sun too go down ,PETA-Approved Vegan 100% Organic Cotton.",
    price: "£16.66",
    image: "product_Images/p2.webp",
    isFavorite: false,
    category: "Men",
    Rating: 3.5,
  ),
  ProductModel(
    id: 3,
    name: " Sport Clothes Mens T Shirt",
    Description:
        "Brand: Loyalty Vibes ,Cotton | Poly Blends ,Relaxed fit tee .Scratch free neck label,True to size, Made in USA",
    price: "£35.99",
    image: "product_Images/p3.webp",
    isFavorite: false,
    category: "Men",
    Rating: 4.5,
  ),
  ProductModel(
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
  ProductModel(
      id: 5,
      name: "Multi color shirt ",
      Description:
          "Product Details,Fabric Type100% Cotton,Closure TypePull On,Sleeve TypeShort Sleeve,Fit TypeRegular Fit",
      price: "£19.99",
      image: "product_Images/p5.png",
      isFavorite: false,
      Rating: 4,
      category: "Men"),
  ProductModel(
    id: 6,
    name: " comfy shirt for womens",
    Description:
        "Our Upperfit performance t-shirt is a soft, lightweight fabric that is perfect during outdoor workouts or as a baselayer .  It includes Enhanced wicking fabric that helps keep you dry...",
    price: "£19.99",
    image: "product_Images/p6.png",
    isFavorite: false,
    Rating: 4.5,
    category: "woman",
  ),
  ProductModel(
    id: 7,
    name: " Women’s fitted v-neck t-shirt",
    Description:
        "This women’s fitted v-neck t-shirt feels snug, but not too tight—ideal to wear by itself or as part of a layered look. It’s made of soft, premium quality organic cotton. Don’t spend all day picking out clothes—go with the quintessential basics!",
    price: "£56",
    image: "product_Images/p7.webp",
    isFavorite: false,
    Rating: 3.6,
    category: "woman",
  ),
  ProductModel(
    id: 8,
    name: " Women’s Recycled V-Neck T-Shirt",
    Description:
        "This women’s fitted v-neck t-shirt feels snug, but not too tight—ideal to wear by itself or as part of a layered look. It’s made of soft, premium quality organic cotton. Don’t spend all day picking out clothes—go with the quintessential basics",
    price: "£20.48",
    image: "product_Images/p8.webp",
    isFavorite: false,
    Rating: 4.8,
    category: "woman",
  ),
  ProductModel(
    id: 9,
    name: " LOVE & SQUALOR SHIRTS",
    Description:
        "The “Love & Squalor” dresses on a line are in Women’s burgandy with silver writing.  We have a few of the Men’s Sunshine Yellow and Warm Grey, but we have restocked in the Unisex Pale Pink and  the Organic Cotton Natural White.The “First Crush” t-shirt (based on a poster design) is a unisex black 100% spun cotton and fits true to size.The Woman’s T-shirt (grey in photo) is now burgandy with silver ink of the dresses on a line.All are a nice soft 100% ring spun cotton.Returns and Exchanges on unworn tee's always good! ",
    price: "£30",
    image: "product_Images/p9.png",
    isFavorite: false,
    Rating: 5,
    category: "woman",
  ),
  ProductModel(
    id: 10,
    name: " Womens Criss Cross V-neck shirt ",
    Description:
        "95% Polyester, 5% Spandex.The fabric is very soft and stretchy, which makes it light and ideal for summer weather but heavy enough.Hand wash and they dry quickly with little or no ironing. No shrinkage.",
    price: "£50",
    image: "product_Images/p10.png",
    Rating: 4.5,
    isFavorite: false,
    category: "woman",
  ),
  ProductModel(
    id: 11,
    name: "Guys Hoodie Funny Men's Hoodie",
    Description:
        "high quality blank plus siz hoodies men 100% cotton pullover hooded sweatshirt men",
    price: "£80",
    image: "product_Images/p11.png",
    Rating: 2.5,
    isFavorite: false,
    category: "Man",
  ),
  ProductModel(
    id: 12,
    name: "LP ICONS WHITE PULLOVER HOODIE",
    Description:
        "White pullover hoodie sweatshirt featuring LP logo on the front left chest, Linkin Park across the back, and various LP icons down both sleeves.",
    price: "£60",
    image: "product_Images/p12.webp",
    Rating: 3.5,
    isFavorite: false,
    category: "Man",
  ),
  ProductModel(
    id: 13,
    name: "Big Red Whistle All Friends’ Hoodie",
    Description:
        "With your favourite big red whistle splashed on the front, this will be your go-to, curl-up-in hoodie for all its soft, smooth, and stylish goodness. Made from organic cotton and recycled polyester, it's the perfect eco-friendly choice.",
    price: "£54",
    image: "product_Images/p13.png",
    Rating: 3,
    isFavorite: false,
    category: "Man",
  ),
  ProductModel(
    id: 14,
    name: "Balloons Astronaut - White Hoodie Men",
    Description:
        "Long sleeves hooded sweatshirt in white with the ORGANISED CHAOS logo printed on the back The BALLOONS ASTRONAUT printed on the front. Kangaroo pocket. White strings.",
    price: "£69",
    image: "product_Images/p14.webp",
    isFavorite: false,
    Rating: 4.7,
    category: "Man",
  ),
  ProductModel(
    id: 15,
    name: "Cotton Blend The Walking Dead Hoodies",
    Description:
        "high quality printed plus siz hoodies men 100% cotton pullover hooded sweatshirt men",
    price: "£75",
    image: "product_Images/p15.png",
    isFavorite: false,
    Rating: 4.5,
    category: "Man",
  ),
  ProductModel(
    id: 16,
    name: "Oversized hoodie",
    Description:
        "This sleek hoodie decorated with the iconic lettering logo recalls the streetwear world with its oversized silhouette and original details like the thumb hole on the sleeve cuff.",
    price: "£60",
    image: "product_Images/p16.webp",
    Rating: 4.2,
    isFavorite: false,
    category: "woman",
  ),
  ProductModel(
    id: 17,
    name: "GEAR/LOGO WEAR WOMEN’S SCRIPT HOODIE",
    Description:
        "The Mathews Women’s Script Hoodie is the perfect addition to your fall favorites. With it’s ultra-soft trim-blend fleece it’s sure to keep you comfy all year around. Also available in stores, check your local Authorized Mathews Retailer for availability.",
    price: "£64",
    image: "product_Images/p17.png",
    isFavorite: false,
    Rating: 4.5,
    category: "woman",
  ),
  ProductModel(
    id: 18,
    name: "LIMITLESS WOMEN’S HOODIE",
    Description:
        "When we run, we’re free.Every time we run, there’s a moment between each stride where we have both feet off the ground.At that moment, we’re in flight.The Limitless Women’s Hoodie is inspired by these ‘in flight’ moments, and our ability to break free of whatever comes on our way.",
    price: "£59",
    image: "product_Images/p18.webp",
    isFavorite: false,
    Rating: 5,
    category: "woman",
  ),
  ProductModel(
    id: 19,
    name: " Women's Lightweight Terry Hoodie",
    Description:
        "Light as a long sleeve t-shirt with the features of a hoodie, our unisex lightweight terry hoodie is a super-versatile choice. When the weather is a little too cold for a short-sleeved tee and a little too warm for a heavy hoodie, this is the way to go. Terrycloth textures and rough-cut hems make this item an eye-catching choice. Bottom hem and sleeves have a raw edge.",
    price: "£38",
    image: "product_Images/p19.webp",
    Rating: 4.5,
    isFavorite: false,
    category: "woman",
  ),
  ProductModel(
    id: 20,
    name: "DESIGNER SERIES Women's Crop Hoodie",
    Description: "50",
    price: "£50",
    image: "product_Images/p20.webp",
    Rating: 5,
    isFavorite: false,
    category: "woman",
  ),
  ProductModel(
    id: 21,
    name: "Allbirds Men's Tree Runners",
    Description:
        "Our breathable, silky-smooth sneaker made with responsibly sourced eucalyptus tree fiber treads lightly in everything you do.",
    price: "£90",
    image: "product_Images/p21.png",
    Rating: 4.5,
    isFavorite: false,
    category: "man",
  ),
  ProductModel(
    id: 22,
    name: "Nike React Infinity Run Flyknit Sneakers",
    Description:
        "Looking to brighten up your spring look? These bold color-blocking sneakers are a safe way to make your wardrobe basics pop, without overwhelming the eyes.",
    price: "£150",
    image: "product_Images/p22.png",
    Rating: 5,
    isFavorite: false,
    category: "man",
  ),
  ProductModel(
    id: 23,
    name: "Clifton 8",
    Description:
        "The latest in the award-winning Clifton franchise, the Clifton 8 continues to deliver the perfect combination of soft and light. Crafted with a lighter, more responsive midsole and the same ride...",
    price: "£160",
    image: "product_Images/p23.png",
    Rating: 3.5,
    isFavorite: false,
    category: "man",
  ),
  ProductModel(
    id: 24,
    name: "MEN'S EVERYDAY MOVE SLIP-ONS",
    Description:
        "100% Waterproof .Vegan Materials ,Easy on,Easy off Pull Tabs Breathable Knit",
    price: "£150",
    image: "product_Images/p24.webp",
    Rating: 5,
    isFavorite: false,
    category: "man",
  ),
  ProductModel(
    id: 25,
    name: "VAGABOND ST TRAIL",
    Description:
        "Custom woven blanket uppers,Custom woven blanket lining,Collapsible heels Exposed gore, frayed edges,Cotton lined footbeds with antimicrobial additive,High rebound Soft Top Foam midsoles,Blown rubber outsoles made from 47% recycled EVA foam, 6% straw and 47% virgin rubber",
    price: "£190",
    image: "product_Images/p25.png",
    Rating: 3.2,
    isFavorite: false,
    category: "man",
  ),ProductModel(
    id: 26,
    name: "Nanea Lī",
    Description:"Meet Nanea Lī, a new take on athleisure. Unparalleled craft and premium detailing take on an active personality in this versatile silhouette. Nanea Lī is the go-to shoe for relaxed days, bike rides, and the after-work pau hana. The mesh-wrapped midsole is reminiscent of throw nets used for fishing—a nod to bespoke craft and outdoor lifestyles.",
    price: "£190",
    image: "product_Images/p26.webp",
    Rating: 3.9,
    isFavorite: false,
    category: "man",
  ),ProductModel(
    id: 27,
    name: "CALLI-VULC WOMENS",
    Description:"nspired by Calli-Cut,Diecut EVA midsole,Midsole egg crate construction,Vulcanized outsole,Fully deconstructed upper,Geo-hex tread pattern,Low toe box, keeping the vamp closer to your foot, Suede/ Canvas",
    price: "£190",
    image: "product_Images/p27.webp",
    Rating: 5,
    isFavorite: false,
    category: "woman",
  ),ProductModel(
    id: 28,
    name: "LAUREN WOMEN LEATHER PUMPS",
    Description:"Model S22671 - Powder blue leather Upper - Leather lining - Leather/Rubber sole - 80mm heels - Made in italy",
    price: "£1000",
    image: "product_Images/p30.png",
    Rating: 5,
    isFavorite: false,
    category: "woman",
  ),
];
