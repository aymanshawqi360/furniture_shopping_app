import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_svg/flutter_svg.dart';
import '../business_logic/cubit/producte_cubit.dart';

import '../constants/my_colors.dart';
import 'basket_products/screen/basket_list.dart';
import 'screen/product_page_notification.dart';
import 'screen/product_page_one/screen/product_page_one.dart';
import 'screen/product_page_two.dart';
import 'screen/produtc_Page_keep.dart';

import 'package:badges/badges.dart' as badges;
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int number = 0;

  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   // BlocProvider.of<ProducteCubit>(context).counter(number);
  // }
  List pagesScreen = [
    ProductsPageOne(),
    ProductPageTwo(),
    ProdutcPageKeep(),
    ProductPageNotification()
    // Routes.productsPageOne,
    // Routes.productsPageTwo,
    // Routes.productsPageKeep,
    // Routes.productsPageNotification,
  ];

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CartProvider>(context);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: BlocBuilder<ProducteCubit, ProducteState>(
          builder: (context, state) {
            return BottomNavigationBar(
                // selectedIconTheme: IconThemeData(color: MyColors.color),
                selectedItemColor: MyColors.color,
                selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
                unselectedItemColor: MyColors.colorGreen,
                backgroundColor: MyColors.colorWihteFFFFFF,
                type: BottomNavigationBarType.fixed,
                currentIndex: number,
                onTap: (value) {
                  // BlocProvider.of<ProducteCubit>(context).counter(number);
                  // setState(() {
                  //   number = value;
                  // });
                  number = value;
                  context.read<ProducteCubit>().counter(number);
                  // setState(() {
                  //   number = value;
                  // });

                  print(value);
                },
                items: [
                  BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        "assets/svg/clarity_home-solid.svg",
                        // color: number == 0 ? MyColors.color : Color(0xff999999),
                      ),
                      label: "Home"),
                  BottomNavigationBarItem(
                      icon: badges.Badge(
                        badgeContent: Text(
                          '${provider.numberSave}',
                          style: TextStyle(color: MyColors.colorWihteFFFFFF),
                        ),
                        child: SvgPicture.asset(
                          "assets/svg/keep-minus.svg",
                          // color: number == 1 ? MyColors.color : Color(0xff999999),
                        ),
                      ),
                      label: "Saved"),
                  BottomNavigationBarItem(
                      icon: badges.Badge(
                        badgeContent: Text(
                          '0',
                          style: TextStyle(color: MyColors.colorWihteFFFFFF),
                        ),
                        child: SvgPicture.asset(
                          "assets/svg/notification.svg",
                          // color: number == 2 ? MyColors.color : Color(0xff999999),
                        ),
                      ),
                      label: "Notifications"),
                  BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        "assets/svg/person.svg",
                        // color: number == 3 ? MyColors.color : Color(0xff999999),
                      ),
                      label: "Profile"),
                ]);
          },
        ),

        // backgroundColor: MyColors.colorWihte,
        body: BlocBuilder<ProducteCubit, ProducteState>(
          builder: (context, state) {
            return pagesScreen.elementAt(number);
          },
        ));
  }
}
