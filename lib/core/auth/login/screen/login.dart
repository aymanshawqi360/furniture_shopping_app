import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:furniture_shopping_app/core/auth/login/widget/build_Text_Form_Field.dart';
import 'package:furniture_shopping_app/core/auth/login/widget/build_button.dart';
import 'package:furniture_shopping_app/core/auth/login/widget/build_communications_programs.dart';
import 'package:furniture_shopping_app/core/auth/login/widget/loading_login.dart';
import 'package:furniture_shopping_app/core/auth/signup/screen/firebase_auth.dart';
import 'package:furniture_shopping_app/core/auth/signup/screen/firebase_error/firebase_error.dart';
import 'package:furniture_shopping_app/core/auth/signup/screen/signup.dart';
import 'package:furniture_shopping_app/core/business_logic/cubit/producte_cubit.dart';
import 'package:furniture_shopping_app/core/presentation/home_page.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  bool loginTruee = false;
  // vv() {
  //   return Container(
  //       child: Image(image: AssetImage("assets\images\signup.gif")));
  // }
  // Future<void> logins() async {
  //   FirebaseAuthProduct firebaseAuthProduct = FirebaseAuthProduct();
  //   LoginError loginError = await firebaseAuthProduct.loginn(
  //       email: _email.text, password: _password.text);

  //   if (loginError.testError) {
  //     setState(() {
  //       // loginError.testError;
  //     });
  //     Future.delayed(
  //       Duration(seconds: 4),
  //       () => Navigator.pushReplacement(
  //         context,
  //         MaterialPageRoute(
  //           builder: (context) => BlocProvider(
  //               create: (context) => ProducteCubit(), child: HomePage()),
  //         ),
  //       ),
  //     );
  //   } else {
  //     setState(() {
  //       // firebaseError.test = false;
  //     });
  //     Alert(
  //       context: context,
  //       type: AlertType.error,
  //       title: "Error",
  //       desc: "${loginError.massingError}",
  //       buttons: [
  //         DialogButton(
  //           child: Text(
  //             "COOL",
  //             style: TextStyle(color: Colors.white, fontSize: 20),
  //           ),
  //           onPressed: () => Navigator.pop(context),
  //           width: 120,
  //         )
  //       ],
  //     ).show();
  //   }
  // }

  Future<void> Login() async {
    FirebaseAuthProduct _firebaseAuth = FirebaseAuthProduct();
    bool loginTrue =
        await _firebaseAuth.login(email: _email.text, password: _password.text);
    if (loginTrue) {
      setState(() {
        loginTruee = true;
      });

      Future.delayed(
        Duration(seconds: 4),
        () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => BlocProvider(
                create: (context) => ProducteCubit(), child: HomePage()),
          ),
        ),
      );
    } else {
      setState(() {
        loginTruee = false;
      });
      Alert(
        context: context,
        type: AlertType.error,
        title: "Error",
        desc: "Email Not",
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

  cheak() async {
    if (_email.text.isNotEmpty && _password.text.isNotEmpty) {
      await Login();
    } else {
      print("pleas enter the data");

      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
          "pleas enter the data",
          style: TextStyle(
              // fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white),
        ),
        duration: Duration(seconds: 1),
      ));
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffFFFFFF),
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      // ),
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
              "Login",
              style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              "Login to continue using the app",
              style: TextStyle(color: Colors.grey[500], fontSize: 12.3.sp),
            ),
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
                hintText: "Enter your email", controllerText: _email),
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
              controllerText: _password,
            ),
            SizedBox(
              height: 13.h,
            ),
            Container(
              child: Text(
                "Forgat Password?",
                textAlign: TextAlign.end,
                style: TextStyle(fontSize: 10.sp),
              ),
            ),

            SizedBox(
              height: 30.h,
            ),
            // buildButton(nameButton: "Login",onPressed: (){},),
            buildButton(
                text: loginTruee == false
                    ? Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold),
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            // width: 15.w,
                            // height: 15.h,
                            child: CircularProgressIndicator(
                              backgroundColor: Colors.white,
                              strokeWidth: 2,
                              strokeAlign: -10,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          Text(
                            "Lodin....",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                onPressed: () {
                  cheak();
                }),
            SizedBox(
              height: 40.sp,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    width: 127.w,
                    height: 20.h,
                    child: Image.asset(
                      "assets/images/Rectangle 3.png",
                      color: Colors.black,
                    )),
                Text(
                  "Or Login with",
                  style:
                      TextStyle(fontSize: 11.sp, fontWeight: FontWeight.bold),
                ),
                Container(
                    width: 127.w,
                    height: 20.h,
                    child: Image.asset(
                      "assets/images/Rectangle 4.png",
                      color: Colors.black,
                    )),
              ],
            ),
            SizedBox(
              height: 35.sp,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildCommunicationsPrograms(
                    image: Image.asset("assets/images/facebook.png"),
                    onPressed: () {}),
                buildCommunicationsPrograms(
                    image: Image.asset("assets/images/google.png"),
                    onPressed: () {}),
                buildCommunicationsPrograms(
                    image: Image.asset("assets/images/phoneApple.png"),
                    onPressed: () {}),
              ],
            ),
            SizedBox(
              height: 99.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don`t have an count?',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 13.sp)),
                InkWell(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
                    // Register
                    child: Text('SignUp',
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w500,
                            fontSize: 13.sp))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
