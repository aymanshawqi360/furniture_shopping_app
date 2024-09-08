import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_shopping_app/core/constants/my_colors.dart';
import 'package:furniture_shopping_app/core/data/model/producte_api.dart';
import 'package:furniture_shopping_app/core/presentation/basket_products/screen/basket_list.dart';
import 'package:furniture_shopping_app/core/presentation/screen/product_page_two/widget/botto_buy.dart';
import 'package:provider/provider.dart';

class ButtonSave extends StatelessWidget {
  final Product product;
  const ButtonSave({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CartProvider>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            width: 56.w,
            height: 56.h,
            decoration: BoxDecoration(
                color: MyColors.colorGrey.withOpacity(0.3),
                borderRadius: BorderRadius.circular(8)),
            child: IconButton(
                onPressed: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => ProductPageTwo()));
                  provider.toggleFavoriteTwo(product);
                },
                icon: Image.asset(
                  "assets/images/keep-minus.png",
                  scale: 3,
                ))),
        // ButtonBuy()
        Expanded(
            child: BottonBuy(
          product: product,
        ))
      ],
    );
  }
}
