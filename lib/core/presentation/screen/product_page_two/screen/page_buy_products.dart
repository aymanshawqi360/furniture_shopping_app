import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_shopping_app/core/constants/my_colors.dart';
import 'package:furniture_shopping_app/core/data/model/producte_api.dart';
import 'package:furniture_shopping_app/core/presentation/screen/product_page_two/widget/body.dart';

class PageBuyProducts extends StatefulWidget {
  // final int numberIndex;
  final Product product;
  PageBuyProducts({super.key, required this.product});

  @override
  State<PageBuyProducts> createState() => _PageBuyProductsState();
}

class _PageBuyProductsState extends State<PageBuyProducts> {
  // Product product = Product();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.colorWihteFFFFFF,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Container(
            // padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 0.h),
            margin: EdgeInsets.symmetric(horizontal: 12.w),
            // width: 50.w,
            // height: 10.h,
            decoration: BoxDecoration(
                // color: Colors.grey[300],
                borderRadius: BorderRadius.circular(5)),
            child: Icon(
              Icons.arrow_back_ios_rounded,
              size: 32.sp,
            ),
          ),
        ),
      ),
      backgroundColor: MyColors.colorWihteFFFFFF,
      body: Body(
        product: widget.product,
      ),
    );
  }
}
