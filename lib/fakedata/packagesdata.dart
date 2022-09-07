//////////////////////////
List<PackageProduct> pckprolist = [
  PackageProduct(
    image: "assets/tshirtpair.jpeg",
    price: 60,
    description: '5 T-Shirts Dry Cleaning',
  ),
  PackageProduct(
    image: "assets/pantshirt.jpeg",
    price: 40,
    description: 'Shirt and Jeans Dry Cleaning',
  ),
  PackageProduct(
    image: "assets/trouserpair.jpeg",
    price: 80,
    description: '5 jeans dry and cleaning',
  ),
  PackageProduct(
    image: "assets/uniform.jpeg",
    price: 50,
    description: '2 uniform dry and cleaning',
  ),
  PackageProduct(
    image: "assets/pressed.jpeg",
    price: 56,
    description: '5 linen dry and cleaning',
  ),
];

class PackageProduct {
  int price;
  String description;
  String image;

  PackageProduct({
    required this.image,
    required this.price,
    required this.description,
  });
}
