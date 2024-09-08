import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../business_logic/cubit/producte_cubit.dart';
import '../presentation/basket_products/screen/page_cart_basket_product.dart';
// import 'package:furniture_shopping_app/core/data/model/producte.dart';
import 'package:furniture_shopping_app/core/presentation/home_page.dart';
import 'package:furniture_shopping_app/core/presentation/screen/product_page_notification.dart';
import 'package:furniture_shopping_app/core/presentation/screen/product_page_one/screen/product_page_one.dart';
import 'package:furniture_shopping_app/core/presentation/screen/product_page_two.dart';
// import 'package:furniture_shopping_app/core/presentation/screen/product_page_two/screen/page_buy_products.dart';
// import 'package:furniture_shopping_app/core/presentation/screen/product_page_two/widget/button_save.dart';
import 'package:furniture_shopping_app/core/presentation/screen/produtc_Page_keep.dart';
import 'package:furniture_shopping_app/core/routing/routes.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homePage:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (contex) => ProducteCubit(),
                  child: HomePage(),
                ));

      case Routes.productsPageOne:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => ProducteCubit(),
                  child: ProductsPageOne(),
                ));
      case Routes.productsPageTwo:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (contex) => ProducteCubit(),
            child: ProductPageTwo(),
          ),
        );
      case Routes.productsPageKeep:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => ProducteCubit(),
            child: ProdutcPageKeep(),
          ),
        );
      case Routes.productsPageNotification:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => ProducteCubit(),
                  child: ProductPageNotification(),
                ));
      // case Routes.pageBasketProduct:
      //   return MaterialPageRoute(
      //       builder: (context) => BlocProvider(
      //             create: (context) => ProducteCubit(),
      //             child: PageBasketProduct(),
      //           ));

      // case Routes.ButtonSave:
      //   // Product product = Product();
      //   // int number=0;
      //   numberIndexs;
      //   // final product = settings.arguments as Product;
      //   return MaterialPageRoute(
      //       builder: (context) => BlocProvider(
      //             create: (context) => ProducteCubit(),
      //             child: ButtonSave()
      //           ));
    }
  }
}
