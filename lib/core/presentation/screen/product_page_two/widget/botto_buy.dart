import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../constants/my_colors.dart';
import '../../../../data/model/producte_api.dart';
import '../../../basket_products/screen/basket_list.dart';
import 'package:provider/provider.dart';

class BottonBuy extends StatefulWidget {
  final Product product;
  BottonBuy({super.key, required this.product});

  @override
  State<BottonBuy> createState() => _BottonBuyState();
}

class _BottonBuyState extends State<BottonBuy> {
  // final StreamController<int> streamControllerOne = StreamController<int>();
  // Product product = Product();

  @override
  Widget build(BuildContext context) {
    // final provider = CartProvider.of(context);
    final provider = Provider.of<CartProvider>(context);
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 10.w,
      ),
      height: 56.h,
      decoration: BoxDecoration(
          color: MyColors.color, borderRadius: BorderRadius.circular(10)),
      child: InkWell(
        onTap: () {
          provider.toggleFavorite(widget.product);
        provider.numbers==0?Null: 
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(
              "تم الاضافة الى السلة",
              style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white),
            ),
            duration: Duration(seconds: 1),));
          //    snackBar = SnackBar(
          //   content: Text(
          //     "تم الاضافة الى السلة",
          //     style: TextStyle(
          //         // fontWeight: FontWeight.bold,
          //         fontSize: 20,
          //         color: Colors.white),
          //   ),
          //   duration: Duration(seconds: 1),
          // );

          // addCounter();
          // addNumber++;
          // contactCounter.add(addNumber);

          // addToCart(Basket(numberIndex: widget.numberIndex));
          // context.read<ProducteCubit>().addBasket(Basket(
          //       numberIndex: numberIndex,
          //     ));

          // context.read<ProducteCubit>().addBasket(Basket(numberIndex:widget.numberIndex ));

          // context.read<ProducteCubit>().addBasket();

          // context.read<ProducteCubit>().addStream();
          // setState(() {
          //   // ddd.addCounter();
          //   dd.addCounter();
          // });
          // Baskets().streamFun();

          // context.read<ProducteCubit>().addStream();
          // context.read<ProducteCubit>().addNumber();
        },
        child: Center(
          child: Text(
            'Add to cart',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18.sp),
          ),
        ),
      ),
    );
  }
}
