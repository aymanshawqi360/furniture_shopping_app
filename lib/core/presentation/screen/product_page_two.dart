import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../basket_products/screen/basket_list.dart';
import 'package:provider/provider.dart';

class ProductPageTwo extends StatelessWidget {
  const ProductPageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CartProvider>(context);
    final finalList = provider.cartSave;
    return Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text("FurnitureCo."),
        ),
        body: ListView.builder(
            itemCount: finalList.length,
            itemBuilder: (context, index) {
              final cartItems = finalList[index];
              return Stack(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.h, vertical: 10.w),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          // color: Colors.black,
                          color: Colors.grey.withOpacity(0.1),
                          // borderRadius: BorderRadius.circular(10.8),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade600,
                              // color: Color(0xffFFFFFF),
                              spreadRadius: 0.0,
                              blurRadius: 0,
                              offset: const Offset(0, 0),
                            ),
                            const BoxShadow(
                                color: Colors.white,
                                offset: Offset(-0, -0),
                                blurRadius: 0,
                                spreadRadius: 0.0)
                          ]),
                      padding:
                          EdgeInsets.symmetric(horizontal: 5.h, vertical: 5.w),
                      child: Row(
                        children: [
                          Container(
                            height: 100.h,
                            width: 90.w,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade400,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            padding: EdgeInsets.all(10),
                            child: Image.asset("${cartItems.image.toString()}"
                                // cartItems.getProductImages(index)
                                ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${cartItems.title.toString()}",
                                // "${cartItems.getProductTitle(index)}",
                                style: TextStyle(
                                    // fontWeight: FontWeight.bold,
                                    fontSize: 16.sp),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                "\$${cartItems.price.toString()}",
                                // "${cartItems.getProductPrice(index)}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.sp,
                                    color: Colors.grey.shade400),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      top: 25.h,
                      right: 25.w,
                      child: Column(
                        children: [
                          IconButton(
                              onPressed: () {
                                provider.deleteSave(cartItems);
                              },
                              icon: Icon(
                                Icons.delete,
                                color: Colors.red,
                              ))
                        ],
                      ))
                ],
              );
            }));
  }
}
