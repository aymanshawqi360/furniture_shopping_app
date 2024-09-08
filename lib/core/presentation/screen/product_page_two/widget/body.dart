import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_shopping_app/core/presentation/basket_products/screen/basket_list.dart';
import 'package:provider/provider.dart';
import '../../../../constants/my_colors.dart';
import '../../../../data/model/producte_api.dart';
import 'package:furniture_shopping_app/core/presentation/screen/product_page_two/widget/button_save.dart';
import 'package:furniture_shopping_app/core/presentation/screen/product_page_two/widget/counter_product.dart';
import 'package:furniture_shopping_app/core/presentation/screen/product_page_two/widget/description.dart';
import 'package:furniture_shopping_app/core/presentation/screen/product_page_two/widget/the_Product_Evaluates.dart';

class Body extends StatefulWidget {
  // final Product product;
  // final int numberIndex;
  final Product product;
  Body({super.key, required this.product});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  // Product product = Product();

  int number = 0;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CartProvider>(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Stack(
        children: [
          Positioned(
            top: 95.h,
            child: Container(
              width: 50,
              height: 180,
              decoration: BoxDecoration(
                  color: MyColors.colorWihte.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(25)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buildSelectionColors(
                      MyColors.colorGrey, Color(0xff133840), 30, 30),
                  buildSelectionColors(
                      Color(0xffF0E9E1), MyColors.colorB4916C, 30, 30),
                  buildSelectionColors(
                      Color(0xffF0E9E1), MyColors.colorE4CBAD, 30, 30),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 80.w, top: 50.h),
            child: SingleChildScrollView(
              // padding: EdgeInsets.symmetric(horizontal: 0.w),
              child: Hero(
                tag: widget.product.id,
                child: Container(
                  //    margin: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Image.asset(
                    // product.getProductImages(widget.numberIndex),
                    "${widget.product.image}",
                    scale: 2,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.end,
              //   children: [
              //     Container(child: Image.asset(product.getProductImages(0),fit: BoxFit.cover,scale: 1.7,),)
              //     ],
              // )
              Container(
                child: Text(
                  // product.getProductTitle(widget.numberIndex).toString(),
                  "${widget.product.title.toString()}",
                  style: TextStyle(fontSize: 20.sp),
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        // "\$${product.getProductPrice(widget.numberIndex).toString()}",
                        "\$${widget.product.price.toString()}",
                        style: TextStyle(
                            fontSize: 24.sp,
                            color: MyColors.colorGreen,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Row(
                      children: [
                        counterProduct(Icon(Icons.add), () {
                          provider.incremant();
                          // context.read<ProducteCubit>().countersIncreament();
                        }),
                        SizedBox(
                          width: 15.w,
                        ),
                           Text(
                                // "${state.counter.toString().padLeft(2, "0")}",
                                "${provider.numbers.toString().padLeft(2,"0")}",
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                        // BlocBuilder<ProducteCubit, ProducteState>(
                        //   builder: (context, state) {
                        //     if (state is Counters) {
                            
                        //     } else {
                        //       return Text(
                        //         "00",
                        //         style: TextStyle(
                        //             fontSize: 16.sp,
                        //             fontWeight: FontWeight.bold),
                        //       );
                        //     }
                        //   },
                        // ),
                        SizedBox(
                          width: 15.w,
                        ),
                        counterProduct(Icon(Icons.remove), () {
                          provider.decrmant();
                          // context.read<ProducteCubit>().counterDecreament();
                        })
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              // TheProductEvaluates(),
              TheProductEvaluate(
                // numberIndex: widget.numberIndex,
                product: widget.product,
              ),

              SizedBox(
                height: 15.h,
              ),
              descriptionProducer(
                // "${product.getProductDescription(widget.numberIndex).toString()}"
                "${widget.product.description.toString()}",
              ),
              SizedBox(
                height: 60.h,
              ),
              // ButtonSave(numberIndex: numberIndex,),
              ButtonSave(
                product: widget.product,
              ),
              // producerSave(),
              SizedBox(
                height: 30.h,
              )
            ],
          ),
        ],
      ),
    );
  }

  // Widget theProductEvaluates() {

  //   return
  // }

  // Widget producerSave() {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //     children: [
  //       Container(
  //           width: 56.w,
  //           height: 56.h,
  //           decoration: BoxDecoration(
  //               color: MyColors.colorGrey.withOpacity(0.3),
  //               borderRadius: BorderRadius.circular(8)),
  //           child: IconButton(
  //               onPressed: () {},
  //               icon: Image.asset(
  //                 "assets/images/keep-minus.png",
  //                 scale: 3,
  //               ))),
  //       // ButtonBuy()
  //       ElevatedButton(
  //       style: ElevatedButton.styleFrom(
  //           backgroundColor: MyColors.color,
  //           shadowColor: MyColors.color,
  //           elevation: 4,
  //           padding: EdgeInsets.symmetric(horizontal: 90.w, vertical: 16.h),
  //           shape: BeveledRectangleBorder(
  //               borderRadius: BorderRadius.circular(3.0))),
  //       onPressed: () {},
  //       child: Text(
  //         "Add to cart",
  //         style: TextStyle(
  //             color: MyColors.colorF8F8F8,
  //             fontSize: 14.sp,
  //             fontWeight: FontWeight.bold),
  //       ))
  //     ],
  //   );
  // }

  Widget ButtonBuy() {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: MyColors.color,
            shadowColor: MyColors.color,
            elevation: 4,
            padding: EdgeInsets.symmetric(horizontal: 90.w, vertical: 16.h),
            shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(3.0))),
        onPressed: () {},
        child: Text(
          "Add to cart",
          style: TextStyle(
              color: MyColors.colorF8F8F8,
              fontSize: 14.sp,
              fontWeight: FontWeight.bold),
        ));
  }

  Widget buildSelectionColors(
      Color colorOne, Color colorTwo, int height, int width) {
    return Container(
        height: height.h,
        width: width.w,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: colorOne, width: 5),
        ),
        child: DecoratedBox(
          position: DecorationPosition.foreground,
          decoration: BoxDecoration(color: colorTwo, shape: BoxShape.circle),
        ));
  }
}
