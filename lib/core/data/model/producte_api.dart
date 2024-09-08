// import 'package:flutter/material.dart';
// import 'package:furniture_shopping_app/core/data/model/producte.dart';

class Product {
  final String image, title, description, Reviews;
  final int id;
  final double price;
  // final Color color;
  final double evaluateAProduct;
  int quantity;

  Product(
      {required this.image,
      required this.title,
      required this.description,
      required this.id,
      required this.price,
      required this.quantity,
      required this.Reviews,
      required this.evaluateAProduct});
}
final List<Product> products = [
    Product(
        id: 1,
        image: "assets/images/Royal Palm Sofa.png",
        title: "Royal Palm Sofa",
        price: 50.18,
        description: dummyText,
        // color: Color(0xffFFFFFF),
        evaluateAProduct: 4.5,
        Reviews: "(500 Reviews)",
        quantity: 1),
    Product(
        id: 2,
        image: "assets/images/Leatherette Sofa.png",
        title: "Leatherette Sofa",
        price: 30.99,
        description: dummyText,
        // color: Color(0xffFFFFFF),
        evaluateAProduct: 4.5,
        Reviews: "(500 Reviews)",
        quantity: 1),
    Product(
        id: 3,
        image: "assets/images/Modern Sofa.png",
        title: "Modern Sofa",
        price: 15.44,
        description: dummyText,
        // color: Color(0xffFFFFFF),
        evaluateAProduct: 4.5,
        Reviews: "(500 Reviews)",
        quantity: 1),
    Product(
        id: 4,
        image: "assets/images/Leatherette Sofa1.png",
        title: "Modern Sofa",
        price: 28.0,
        description: dummyText,
        // color: Color(0xffFFFFFF),
        evaluateAProduct: 4.5,
        Reviews: "(500 Reviews)",
        quantity: 1),
    Product(
        id: 5,
        image: "assets/images/Royal Palm Sofa.png",
        title: "Modern Sofa",
        price: 24.0,
        description: dummyText,
        // color: Color(0xffFFFFFF),
        evaluateAProduct: 4.5,
        Reviews: "(500 Reviews)",
        quantity: 1),
    Product(
        id: 6,
        image: "assets/images/Royal Palm Sofa.png",
        title: "Modern Sofa",
        price: 20.99,
        description: dummyText,
        // color: Color(0xffFFFFFF),
        evaluateAProduct: 4.5,
        Reviews: "(500 Reviews)",
        quantity: 1),
    Product(
        id: 7,
        image: "assets/images/Royal Palm Sofa.png",
        title: "Modern Sofa",
        price: 17.2,
        description: dummyText,
        // color: Color(0xffFFFFFF),
        evaluateAProduct: 4.5,
        Reviews: "(500 Reviews)",
        quantity: 1),
    Product(
        id: 8,
        image: "assets/images/Modern Sofa.png",
        title: "Modern Sofa",
        price: 50.1,
        description: dummyText,
        // color: Color(0xffFFFFFF),
        evaluateAProduct: 4.5,
        Reviews: "(500 Reviews)",
        quantity: 1),
    Product(
        id: 9,
        image: "assets/images/Modern Sofa.png",
        title: "Modern Sofa",
        price: 48.7,
        description: dummyText,
        // color: Color(0xffFFFFFF),
        evaluateAProduct: 4.5,
        Reviews: "(500 Reviews)",
        quantity: 1),
    Product(
        id: 10,
        image: "assets/images/Leatherette Sofa.png",
        title: "Modern Sofa",
        price: 43.90,
        description: dummyText,
        // color: Color(0xffFFFFFF),
        evaluateAProduct: 4.5,
        Reviews: "(500 Reviews)",
        quantity: 1),
    Product(
        id: 11,
        image: "assets/images/Leatherette Sofa.png",
        title: "Modern Sofa",
        price: 30.3,
        description: dummyText,
        // color: Color(0xffFFFFFF),
        evaluateAProduct: 4.5,
        Reviews: "(500 Reviews)",
        quantity: 1),
    Product(
        id: 12,
        image: "assets/images/Leatherette Sofa.png",
        title: "Modern Sofa",
        price: 44.0,
        description: dummyText,
        // color: Color(0xffFFFFFF),
        evaluateAProduct: 4.5,
        Reviews: "(500 Reviews)",
        quantity: 1),
  ];
  
String dummyText =
    "Minimal Sofa is made of by natural wood. The design that is very simple and minimal. This is truly one of the best furnitures in any family for now. With 3 different colors, you can easily select the best match for your home.";

  //       List<ProductApi> producte = [
  //   ProductApi(
  //     id: 1,
  //     image: "assets/images/Royal Palm Sofa.png",
  //     title: "Royal Palm Sofa",
  //     price: 50.18,
  //     description: dummyText,
  //     color: Color(0xffFFFFFF),
  //   ),
  //   ProductApi(
  //     id: 2,
  //     image: "assets/images/Leatherette Sofa.png",
  //     title: "Leatherette Sofa",
  //     price: 30.99,
  //     description: dummyText,
  //     color: Color(0xffFFFFFF),
  //   ),
  //   ProductApi(
  //     id: 3,
  //     image: "assets/images/Modern Sofa.png",
  //     title: "Modern Sofa",
  //     price: 45.99,
  //     description: dummyText,
  //     color: Color(0xffFFFFFF),
  //   ),
  //   ProductApi(
  //     id: 4,
  //     image: "assets/images/Leatherette Sofa1.png",
  //     title: "Modern Sofa",
  //     price: 20.99,
  //     description: dummyText,
  //     color: Color(0xffFFFFFF),
  //   ),
  //     ProductApi(
  //     id: 5,
  //     image: "assets/images/Leatherette Sofa1.png",
  //     title: "Modern Sofa",
  //     price: 20.99,
  //     description: dummyText,
  //     color: Color(0xffFFFFFF),
  //   ),
  //     ProductApi(
  //     id: 6,
  //     image: "assets/images/Leatherette Sofa1.png",
  //     title: "Modern Sofa",
  //     price: 20.99,
  //     description: dummyText,
  //     color: Color(0xffFFFFFF),
  //   ),
  //     ProductApi(
  //     id: 7,
  //     image: "assets/images/Leatherette Sofa1.png",
  //     title: "Modern Sofa",
  //     price: 20.99,
  //     description: dummyText,
  //     color: Color(0xffFFFFFF),
  //   ),
  //     ProductApi(
  //     id: 1,
  //     image: "assets/images/Royal Palm Sofa.png",
  //     title: "Royal Palm Sofa",
  //     price: 50.18,
  //     description: dummyText,
  //     color: Color(0xffFFFFFF),
  //   ),
    
  // ];
  // String dummyText =
  //   "Minimal Sofa is made of by natural wood. The design that is very simple and minimal. This is truly one of the best furnitures in any family for now. With 3 different colors, you can easily select the best match for your home.";
