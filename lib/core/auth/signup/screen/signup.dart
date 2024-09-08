import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_shopping_app/core/auth/login/screen/login.dart';
// import 'package:furniture_shopping_app/core/auth/SignUp/widget/build_Text_Form_Field.dart';
// import 'package:furniture_shopping_app/core/auth/SignUp/widget/build_button.dart';
// import 'package:furniture_shopping_app/core/auth/SignUp/widget/build_communications_programs.dart';
import 'package:furniture_shopping_app/core/auth/login/widget/build_Text_Form_Field.dart';
import 'package:furniture_shopping_app/core/auth/login/widget/build_button.dart';
import 'package:furniture_shopping_app/core/auth/signup/screen/firebase_auth.dart';
import 'package:furniture_shopping_app/core/auth/signup/screen/firebase_error/firebase_error.dart';
import 'package:furniture_shopping_app/core/auth/signup/screen/firestore/firestore.dart';
import 'package:furniture_shopping_app/core/business_logic/cubit/producte_cubit.dart';
import 'package:furniture_shopping_app/core/presentation/home_page.dart';
import 'package:furniture_shopping_app/core/presentation/screen/product_page_one/screen/product_page_one.dart';
import 'package:furniture_shopping_app/core/presentation/screen/product_page_two/screen/page_buy_products.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
// import 'package:furniture_shopping_app/core/auth/login/widget/build_communications_programs.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController user = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  // bool signUp = false;
  Future<void> signUpp() async {
    FirebaseAuthProduct firebaseAuthProduct = FirebaseAuthProduct();
    FirebaseError firebaseError = await firebaseAuthProduct.signUpp(
        email: emailController.text, password: passwordController.text);

    if (firebaseError.test) {
      // Firestore firestore = Firestore();
      // firestore.addFireBaseFireStore(
      //     userName: user.text,
      //     email: emailController.text,
      //     password: passwordController.text);
      await Alert(
        context: context,
        type: AlertType.success,
        title: "Success",
        desc: "${firebaseError.massing}",
        buttons: [
          DialogButton(
            child: Text(
              "COOL",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () => Navigator.pop(context),
            width: 120,
          )
        ],
      ).show();
      Future.delayed(
        await Duration(seconds: 4),
        () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => BlocProvider(
                create: (context) => ProducteCubit(), child: HomePage()),
          ),
        ),
      );
    } else {
      await Alert(
        context: context,
        type: AlertType.error,
        title: "Error",
        desc: "${firebaseError.massing}",
        buttons: [
          DialogButton(
            child: Text(
              "COOL",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () => Navigator.pop(context),
            width: 120,
          )
        ],
      ).show();
    }
  }

  // Future<void> signUpUi() async {
  //   FirebaseAuthProduct _firebaseAuth = FirebaseAuthProduct();
  //   bool usarTrue = await _firebaseAuth.signUp(
  //       email: emailController.text, password: passwordController.text);

  //   if (usarTrue) {
  //     Navigator.pushReplacement(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => BlocProvider(
  //             create: (context) => ProducteCubit(), child: HomePage()),
  //       ),
  //     );
  //   } else {
  //     print("userrrrrrrrr");

  //     await ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //       backgroundColor: Colors.red,
  //       content: Text(
  //         "userrrrrrrrr",
  //         style: TextStyle(
  //             // fontWeight: FontWeight.bold,
  //             fontSize: 20,
  //             color: Colors.white),
  //       ),
  //       duration: Duration(seconds: 1),
  //     ));
  //   }
  // }

  // cheak() async {
  //   if (user.text.isNotEmpty &&
  //       emailController.text.isNotEmpty &&
  //       passwordController.text.isNotEmpty) {
  //     await signUpUi();
  //   } else if (user.text.isEmpty) {
  //     print("pleas enter the user");

  //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //       backgroundColor: Colors.red,
  //       content: Text(
  //         "pleas enter the user",
  //         style: TextStyle(
  //             // fontWeight: FontWeight.bold,
  //             fontSize: 20,
  //             color: Colors.white),
  //       ),
  //       duration: Duration(seconds: 1),
  //     ));
  //   } else if (emailController.text.isEmpty) {
  //     print("pleas enter the email");

  //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //       backgroundColor: Colors.red,
  //       content: Text(
  //         "pleas enter the email",
  //         style: TextStyle(
  //             // fontWeight: FontWeight.bold,
  //             fontSize: 20,
  //             color: Colors.white),
  //       ),
  //       duration: Duration(seconds: 1),
  //     ));
  //   } else if (passwordController.text.isEmpty) {
  //     print("pleas enter the password");

  //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //       backgroundColor: Colors.red,
  //       content: Text(
  //         "pleas enter the password",
  //         style: TextStyle(
  //             // fontWeight: FontWeight.bold,
  //             fontSize: 20,
  //             color: Colors.white),
  //       ),
  //       duration: Duration(seconds: 1),
  //     ));
  //   } else if (passwordController.text.length >= 10) {
  //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //       content: Text(
  //         "The password provided is too weak",
  //         style: TextStyle(
  //             // fontWeight: FontWeight.bold,
  //             fontSize: 20,
  //             color: Colors.white),
  //       ),
  //     ));
  //   }
  // }

  @override
  void dispose() {
    // TODO: implement dispose
    emailController.dispose();
    passwordController.dispose();
    user.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffFFFFFF),
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 20.h,
        ),
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            SizedBox(
              height: 30.h,
            ),
            CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 55,
              child: Image.asset(
                "assets/images/pngwing.com.png",
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "SignUp",
              style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              "Enter Your Personal information",
              style: TextStyle(color: Colors.grey[500], fontSize: 12.3.sp),
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              "Username",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 11.sp),
            ),
            SizedBox(
              height: 5.h,
            ),
            buildTextFormField(
                hintText: "Enter your name", controllerText: user),
            SizedBox(
              height: 15.h,
            ),
            Text(
              "Email",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 11.sp),
            ),
            SizedBox(
              height: 5.h,
            ),

            buildTextFormField(
                hintText: "Enter your email", controllerText: emailController),
            SizedBox(
              height: 15.h,
            ),
            Text(
              "Password",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 11.sp),
            ),
            SizedBox(
              height: 5.h,
            ),
            buildTextFormField(
              hintText: "Enter your password",
              controllerText: passwordController,
            ),
            SizedBox(
              height: 25.h,
            ),
            // Container(
            //   child: Text(
            //     "Forgat Password?",
            //     textAlign: TextAlign.end,
            //     style: TextStyle(fontSize: 10.sp),
            //   ),
            // ),

            SizedBox(
              height: 30.h,
            ),
            // buildButton(nameButton: "SignUp",onPressed: (){},),
            buildButton(
                text: Text(
                  "SignUp",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  // signUpUi();
                  signUpp();
                }),
            SizedBox(
              height: 40.sp,
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: [
            //     Container(
            //         width: 127.w,
            //         height: 20.h,
            //         child: Image.asset(
            //           "assets/images/Rectangle 3.png",
            //           color: Colors.black,
            //         )),
            //     Text(
            //       "Or SignUp with",
            //       style:
            //           TextStyle(fontSize: 11.sp, fontWeight: FontWeight.bold),
            //     ),
            //     Container(
            //         width: 127.w,
            //         height: 20.h,
            //         child: Image.asset(
            //           "assets/images/Rectangle 4.png",
            //           color: Colors.black,
            //         )),
            //   ],
            // ),
            // SizedBox(
            //   height: 35.sp,
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: [

            //     buildCommunicationsPrograms(image: Image.asset("assets/images/facebook.png") , onPressed: (){}),
            //     buildCommunicationsPrograms(image: Image.asset("assets/images/google.png") , onPressed: (){}),
            //     buildCommunicationsPrograms(image: Image.asset("assets/images/phoneApple.png") , onPressed: (){}),

            //   ],
            // ),
            SizedBox(
              height: 115.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Have An Account?',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 13.sp)),
                InkWell(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: Text('Login',
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w500,
                            fontSize: 13.sp))),
              ],
            )
            // Text.rich(
            //   textAlign: TextAlign.center,
            //   TextSpan(children: [
            // TextSpan(text: 'Don`t have an count?'),
            // TextSpan(text: 'Register',style: TextStyle(color: Colors.blue)),

            // ]))
          ],
        ),
      ),
    );
  }
}
