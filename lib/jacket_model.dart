class JacketModel {
  int? id;
  String? name;
  String? Description;
  dynamic price;
  String? image;
  bool? isFavorite;
  dynamic Rating;
  String? category;

 JacketModel(
      {this.id,
        this.name,
        this.Description,
        this.price,
        this.image,
        this.isFavorite,
        this.Rating,
        this.category, });
}
List<JacketModel> jacket_list = [
  JacketModel(
    id: 1,
    name: "Guys Hoodie Funny Men's Hoodie",
    Description:
    "high quality blank plus siz hoodies men 100% cotton pullover hooded sweatshirt men",
    price: "£80",
    image: "product_Images/p11.png",
    Rating:2.5,
    isFavorite: false,
    category: "Man",
  ),
  JacketModel(
    id: 2,
    name: "LP ICONS WHITE PULLOVER HOODIE",
    Description:
    "White pullover hoodie sweatshirt featuring LP logo on the front left chest, Linkin Park across the back, and various LP icons down both sleeves.",
    price: "£60",
    image: "product_Images/p12.webp",
    Rating:3.5,
    isFavorite: false,
    category: "Man",
  ),
  JacketModel(
    id: 3,
    name: "Big Red Whistle All Friends’ Hoodie",
    Description:
    "With your favourite big red whistle splashed on the front, this will be your go-to, curl-up-in hoodie for all its soft, smooth, and stylish goodness. Made from organic cotton and recycled polyester, it's the perfect eco-friendly choice.",
    price: "£54",
    image: "product_Images/p13.png",
    Rating:3,
    isFavorite: false,
    category: "Man",
  ),
  JacketModel(
    id: 4,
    name: "Balloons Astronaut - White Hoodie Men",
    Description:
    "Long sleeves hooded sweatshirt in white with the ORGANISED CHAOS logo printed on the back The BALLOONS ASTRONAUT printed on the front. Kangaroo pocket. White strings.",
    price: "£69",
    image: "product_Images/p14.webp",
    isFavorite: false,
    Rating:4.7,
    category: "Man",
  ),
  JacketModel(
    id: 5,
    name: "Cotton Blend The Walking Dead Hoodies",
    Description:
    "high quality printed plus siz hoodies men 100% cotton pullover hooded sweatshirt men",
    price: "£75",
    image: "product_Images/p15.png",
    isFavorite: false,
    Rating:4.5,
    category: "Man",
  ),
  JacketModel(
    id: 6,
    name: "Oversized hoodie",
    Description:
    "This sleek hoodie decorated with the iconic lettering logo recalls the streetwear world with its oversized silhouette and original details like the thumb hole on the sleeve cuff.",
    price: "£60",
    image: "product_Images/p16.webp",
    Rating:4.2,
    isFavorite: false,
    category: "woman",
  ),
  JacketModel(
    id: 7,
    name: "GEAR/LOGO WEAR WOMEN’S SCRIPT HOODIE",
    Description:
    "The Mathews Women’s Script Hoodie is the perfect addition to your fall favorites. With it’s ultra-soft trim-blend fleece it’s sure to keep you comfy all year around. Also available in stores, check your local Authorized Mathews Retailer for availability.",
    price: "£64",
    image: "product_Images/p17.png",
    isFavorite: false,
    Rating:4.5,
    category: "woman",
  ),
  JacketModel(
    id: 8,
    name: "LIMITLESS WOMEN’S HOODIE",
    Description:
    "When we run, we’re free.Every time we run, there’s a moment between each stride where we have both feet off the ground.At that moment, we’re in flight.The Limitless Women’s Hoodie is inspired by these ‘in flight’ moments, and our ability to break free of whatever comes on our way.",
    price: "£59",
    image: "product_Images/p18.webp",
    isFavorite: false,
    Rating:5,
    category: "woman",
  ),
  JacketModel(
    id: 9,
    name: " Women's Lightweight Terry Hoodie",
    Description:
    "Light as a long sleeve t-shirt with the features of a hoodie, our unisex lightweight terry hoodie is a super-versatile choice. When the weather is a little too cold for a short-sleeved tee and a little too warm for a heavy hoodie, this is the way to go. Terrycloth textures and rough-cut hems make this item an eye-catching choice. Bottom hem and sleeves have a raw edge.",
    price: "£38",
    image: "product_Images/p19.webp",
    Rating:4.5,
    isFavorite: false,
    category: "woman",
  ),
  JacketModel(
    id: 10,
    name: "DESIGNER SERIES Women's Crop Hoodie",
    Description: "50",
    price: "£50",
    image: "product_Images/p20.webp",
    Rating:5,
    isFavorite: false,
    category: "woman",
  ),

];