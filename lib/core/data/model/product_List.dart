

class ProductList {
  final String image;
  final int id;
  final String title;

  ProductList({required this.id, required this.image, required this.title});

  // get length => null;
}

List<ProductList> productList = [
  ProductList(
    id: 1,
    image: "assets/images/stares.png",
    title: "Popular",
  ),
  ProductList(
    id:2,
    image: "assets/images/chair.png", 
    title: "Chairs"
    ),
  ProductList(
    id:3,
    image: "assets/images/table.png", 
    title: "Tables"
    ),
  ProductList(
    id:4,
    image: "assets/images/sofa.png", 
    title: "Sofas"
    ),
  ProductList(
    id:5,
    image: "assets/images/bed.png", 
    title: "Beds"
    ),

];
