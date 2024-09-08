import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_shopping_app/core/auth/login/screen/login.dart';

import 'package:furniture_shopping_app/core/business_logic/cubit/producte_cubit.dart';
import 'package:furniture_shopping_app/core/presentation/home_page.dart';
import 'package:furniture_shopping_app/firebase_options.dart';

// import 'package:furniture_shopping_app/core/presentation/auth/login/screen/login.dart';

import 'core/presentation/basket_products/screen/basket_list.dart';
import 'core/routing/app_router.dart';
// import 'core/routing/routes.dart';
import 'package:provider/provider.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  // await FirebaseAppCheck.instance.activate();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  //  FirebaseAppCheck.instance.activate(
  //   androidProvider: kDebugMode ? AndroidProvider.debug : AndroidProvider.playIntegrity
  // );
  runApp(MyApp(
    appRouter: AppRouter(),
  ));
}

class MyApp extends StatefulWidget {
  final AppRouter appRouter;
  MyApp({super.key, required this.appRouter});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('==============================User is currently signed out!');
      } else {
        print('==============================User is signed in!');
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        builder: (BuildContext context, child) {
          return MultiProvider(
            providers: [ChangeNotifierProvider(create: (_) => CartProvider())],
            child: MaterialApp(
              debugShowCheckedModeBanner: false,

              // initialRoute: Routes.homePage,
              home: FirebaseAuth.instance.currentUser == null
                  ? Login()
                  : BlocProvider(
                      create: (context) => ProducteCubit(), child: HomePage()),
              onGenerateRoute: widget.appRouter.generateRoute,
            ),
          );
        });
  }
}
