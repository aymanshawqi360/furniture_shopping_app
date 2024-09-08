import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_shopping_app/core/business_logic/cubit/producte_cubit.dart';
import 'package:furniture_shopping_app/core/constants/my_colors.dart';
import 'package:furniture_shopping_app/core/data/model/producte_api.dart';
import 'package:furniture_shopping_app/core/presentation/basket_products/screen/basket_list.dart';
import 'package:furniture_shopping_app/core/presentation/basket_products/screen/page_cart_basket_product.dart';
import 'package:furniture_shopping_app/core/presentation/screen/product_page_one/widget/build_producer.dart';
import 'package:furniture_shopping_app/core/presentation/screen/product_page_one/widget/list_product.dart';
import 'package:furniture_shopping_app/core/presentation/screen/product_page_two/screen/page_buy_products.dart';
import 'package:provider/provider.dart';
import '../widget/search_prodcut.dart';
import 'package:badges/badges.dart' as badges;

class ProductsPageOne extends StatefulWidget {
  ProductsPageOne({super.key});

  @override
  State<ProductsPageOne> createState() => _ProductsPageOneState();
}

class _ProductsPageOneState extends State<ProductsPageOne> {
  // Product product = Product();
  // final StreamController<int> streamController = StreamController<int>();

  // Baskets dd = Baskets();
  // void Set() {
  // streamController.add(addNumber);
  // }
  // late Stream <int>stream;

  // @override
  // void initState() {
  //   super.initState();

  //   setState(() {});
  //   // streamController.add(pss.length);
  // }

  @override
  Widget build(BuildContext context) {
    // final provider = Provider.of<CartProvider>(context);
    final provider = Provider.of<CartProvider>(context);
    // final ddd=provider.cart;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xffFFFFFF),
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          // backgroundColor: Colors.white,
          backgroundColor: Color(0xffFFFFFF),
          elevation: 0,
          title: Text("FurnitureCo.",
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold)),
          actions: [
            Container(
              margin: EdgeInsetsDirectional.symmetric(horizontal: 14.w),
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => BlocProvider(
                          create: (context) => ProducteCubit(),
                          child: PageCartBasketProduct(),
                        ),
                      ),
                    );
                  },
                  child: badges.Badge(
                    badgeContent: Text(
                      "${provider.number}",
                      style: TextStyle(color: MyColors.colorWihteFFFFFF),
                    ),
                    child: SvgPicture.asset("assets/svg/cart.svg"),
                  )),
            )
          ],
        ),
        body: Column(
          children: [
            searchProduct(),
            buildListProduct(),
            SizedBox(
              height: 10.h,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 0.h),
                child: GridView.builder(
                    itemCount: products.length,
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    padding: EdgeInsets.zero,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 0.89,
                            crossAxisSpacing: 15,
                            mainAxisSpacing: 15),
                    itemBuilder: (context, index) {
                      // numberIndexs = index;
                      return BuildProducer(
                        // number: index,
                        product: products[index],
                        function: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => BlocProvider(
                                      create: (context) => ProducteCubit(),
                                      child: PageBuyProducts(
                                        product: products[index],
                                      ),
                                    )),
                          );
                        },
                      );
                    }),
              ),
            )
          ],
        ));
  }
}

  // badgeContent: BlocBuilder<ProducteCubit,ProducteState>(
  //                     builder: (context, state) {
  //                     return pss.isEmpty? Text(
  //                         '0',
  //                         style: TextStyle(color: MyColors.colorWihteFFFFFF),
  //                       ): Text(
  //                         '${pss.length}',
  //                         style: TextStyle(color: MyColors.colorWihteFFFFFF),
  //                       );
  //                     },
  //                   ),

// buildListProduct(productLists: productList[index],numberIndex: index,);

// Card(
              
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   Container(
//                     width: 157.w,
//                     height: 208.48.h,
//                     decoration: BoxDecoration(
//                         // image: DecorationImage(image: ),
//                         // color:Colors.white,
                        
//                         borderRadius: BorderRadius.circular(10.88)),
//                     child: Image.asset(product.getProductImages(0),scale: 4,),
//                   ),
//                   Text(product.getProductTitle(0)),
//                   Text(product.getProductTitle(0)),
//                 ],
//               ),
//             ),