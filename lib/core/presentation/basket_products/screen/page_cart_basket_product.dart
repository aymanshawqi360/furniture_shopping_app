import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/my_colors.dart';
import 'basket_list.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class PageCartBasketProduct extends StatelessWidget {
  PageCartBasketProduct({super.key});
  // Product product = Product();
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CartProvider>(context);
    final finalList = provider.cart;

    return Scaffold(
        backgroundColor: MyColors.colorWihteFFFFFF,
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          backgroundColor: Colors.transparent,
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
        body: ListView.builder(
            itemCount: finalList.length,
            scrollDirection: Axis.vertical,
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
                                provider.delete(cartItems);
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


// pss.isEmpty
//           ? Center(
//               child: Image.asset(
//                 "assets/images/no_internet.png",
//                 fit: BoxFit.cover,
//               ),
//             )
//           : SingleChildScrollView(
//             child: Column(
//               children: pss,
//             ),
//           )


// BlocBuilder<ProducteCubit,ProducteState>(
//         builder: (context, state) {
//         if(state is Baskete){
//           return    SingleChildScrollView(
//             child: Column(
//               children: state.basket,
//             ),
//           );
//         }else{
//             return SingleChildScrollView(
//             child: Column(
//               children: [],
//             ),
//           );
//         }
//         },
//       ),