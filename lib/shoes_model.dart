import 'shirt_model.dart';

class ShoesModel{
  int? id;
  String? name;
  String? Description;
  dynamic price;
  String? image;
  bool? isFavorite;
  dynamic Rating;
  String? category;

  ShoesModel({
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

List<ShoesModel> Shoeslist= [
  ShoesModel(
    id: 1,
    name: "Allbirds Men's Tree Runners",
    Description:
    "Our breathable, silky-smooth sneaker made with responsibly sourced eucalyptus tree fiber treads lightly in everything you do.",
    price: "£90",
    image: "product_Images/p21.png",
    Rating: 4.5,
    isFavorite: false,
    category: "man",
  ),
  ShoesModel(
    id: 2,
    name: "Nike React Infinity Run Flyknit Sneakers",
    Description:
    "Looking to brighten up your spring look? These bold color-blocking sneakers are a safe way to make your wardrobe basics pop, without overwhelming the eyes.",
    price: "£150",
    image: "product_Images/p22.png",
    Rating: 5,
    isFavorite: false,
    category: "man",
  ),
  ShoesModel(
    id: 3,
    name: "Clifton 8",
    Description:
    "The latest in the award-winning Clifton franchise, the Clifton 8 continues to deliver the perfect combination of soft and light. Crafted with a lighter, more responsive midsole and the same ride...",
    price: "£160",
    image: "product_Images/p23.png",
    Rating: 3.5,
    isFavorite: false,
    category: "man",
  ),
  ShoesModel(
    id: 4,
    name: "MEN'S EVERYDAY MOVE SLIP-ONS",
    Description:
    "100% Waterproof .Vegan Materials ,Easy on,Easy off Pull Tabs Breathable Knit",
    price: "£150",
    image: "product_Images/p24.webp",
    Rating: 5,
    isFavorite: false,
    category: "man",
  ),
  ShoesModel(
    id: 5,
    name: "VAGABOND ST TRAIL",
    Description:
    "Custom woven blanket uppers,Custom woven blanket lining,Collapsible heels Exposed gore, frayed edges,Cotton lined footbeds with antimicrobial additive,High rebound Soft Top Foam midsoles,Blown rubber outsoles made from 47% recycled EVA foam, 6% straw and 47% virgin rubber",
    price: "£190",
    image: "product_Images/p25.png",
    Rating: 3.2,
    isFavorite: false,
    category: "man",
  ),ShoesModel(
    id: 6,
    name: "Nanea Lī",
    Description:"Meet Nanea Lī, a new take on athleisure. Unparalleled craft and premium detailing take on an active personality in this versatile silhouette. Nanea Lī is the go-to shoe for relaxed days, bike rides, and the after-work pau hana. The mesh-wrapped midsole is reminiscent of throw nets used for fishing—a nod to bespoke craft and outdoor lifestyles.",
    price: "£190",
    image: "product_Images/p26.webp",
    Rating: 3.9,
    isFavorite: false,
    category: "man",
  ),ShoesModel(
    id: 7,
    name: "CALLI-VULC WOMENS",
    Description:"nspired by Calli-Cut,Diecut EVA midsole,Midsole egg crate construction,Vulcanized outsole,Fully deconstructed upper,Geo-hex tread pattern,Low toe box, keeping the vamp closer to your foot, Suede/ Canvas",
    price: "£190",
    image: "product_Images/p27.webp",
    Rating: 5,
    isFavorite: false,
    category: "woman",
  ),ShoesModel(
    id: 8,
    name: "LAUREN WOMEN LEATHER PUMPS",
    Description:"Model S22671 - Powder blue leather Upper - Leather lining - Leather/Rubber sole - 80mm heels - Made in italy",
    price: "£1000",
    image: "product_Images/p30.png",
    Rating: 5,
    isFavorite: false,
    category: "woman",
  ),
];