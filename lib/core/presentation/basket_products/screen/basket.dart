// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:furniture_shopping_app/core/constants/my_colors.dart';
// import 'package:furniture_shopping_app/core/data/model/producte.dart';


// // ignore: must_be_immutable
// class Basket extends StatefulWidget {
//   final int numberIndex;
//   Basket({super.key, required this.numberIndex});

//   @override
//   State<Basket> createState() => _BasketState();
// }

// class _BasketState extends State<Basket> {
//   // Product product = Product();

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
//       child: Card(
//         child: ListTile(
//           leading: Container(
//             child: Image.asset(
//               product.getProductImages(widget.numberIndex),
//               scale: 6,
//             ),
//           ),
//           title: Text(product.getProductTitle(widget.numberIndex).toString()),
//           subtitle: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                   "\$${product.getProductPrice(widget.numberIndex).toString()}"),
//               Row(
//                 children: [
//                   Text(
//                     "${product.getProductevaluateAProduct(widget.numberIndex).toString()}",
//                   ),
//                   SizedBox(
//                     width: 5.w,
//                   ),
//                   Text(
//                     product.getProductReviews(widget.numberIndex).toString(),
//                     style:
//                         TextStyle(color: MyColors.colorGrey, fontSize: 12.sp),
//                   ),
//                 ],
//               )
//             ],
//           ),
//           trailing: InkWell(
//               onTap: () {
//                 // setState(() {
//                 //   removeFromCart(widget.numberIndex);
//                 //   print(removeFromCart(product));
//                 // });
//               },
//               child: Icon(Icons.delete)),
//         ),
//       ),
//     );
//   }
// }
