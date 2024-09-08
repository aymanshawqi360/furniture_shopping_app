//firebase auth

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/core/auth/signup/screen/firebase_error/firebase_error.dart';

class FirebaseAuthProduct {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  //============================[signup]===================================//
  // Future<bool> signUp({required String email, required password}) async {
  //   return await firebaseAuth
  //       .createUserWithEmailAndPassword(email: email, password: password)
  //       .then((value) => true)
  //       .catchError((value) => false);
  // }

  Future<FirebaseError> signUpp(
      {required String email, required String password}) async {
    return await firebaseAuth
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((value) {
      if (value.user != null) {
        return FirebaseError(massing: "تمت العملية بنجاح", test: true);
      } else {
        return FirebaseError(massing: "فشلت عمليةإنشاء الحساب", test: false);
      }
    }).catchError((error) {
      if (error is FirebaseAuthException) {
        print("${error.code}");
        switch (error.code) {
          case "invalid-email":
            return FirebaseError(
                massing: 'مشكلة في البريد الإكتروني', test: false);
            break;
          case "user-not-found":
            return FirebaseError(massing: 'المستخدم غير موجود', test: false);
            break;
          case "wrong-password":
            return FirebaseError(massing: 'مشكلة في كلمة المرور', test: false);
            break;
          case "weak-password":
            return FirebaseError(massing: 'كلمة المرور ضعيفة', test: false);
            break;
          case "email-already-in-use":
            return FirebaseError(massing: 'البريد مسنخدم سابقا', test: false);
            break;
          case "too-many-requests":
            return FirebaseError(
                massing:
                    'تم المحاولة لعدة مرات بشكل خاطئ الرجاء المحاولة فيما بعد',
                test: false);
            break;
          case "INVALID_LOGIN_CREDENTIALS":
            return FirebaseError(
                massing: 'الرجاء التاكد من بيانات الحساب', test: false);
            break;
          default:
            return FirebaseError(
                massing: "يوجد مشكلة في تسجيل الدخول", test: false);
        }
      }
    });
  }

  //============================[login]===================================//
  Future<bool> login({required String email, required password}) async {
    return await firebaseAuth
        .signInWithEmailAndPassword(email: email, password: password)
        .then((value) => true)
        .catchError((error) => false);
  }

//   Future<LoginError> loginn({required String email, required password}) async {
//     return await firebaseAuth
//         .signInWithEmailAndPassword(email: email, password: password)
//         .then((value) {
//       if () {
//         return LoginError(massingError: "تمت العملية بنجاح", testError: true);
//       } else {
//         return LoginError(
//             massingError: "فشلت عمليةإنشاء الحساب", testError: false);
//       }
//       // }).catchError((error) {
//       //   return FirebaseError(massing: "فشلت عمليةإنشاء الحساب", test: false);
//     }).catchError((error) {
//       if (error is FirebaseAuthException) {
//         print("${error.code}");

//         switch (error.code) {
//           // case "user-not-found":
//           //   return LoginError(
//           //       massingError: 'المستخدم غير موجود', testError: false);
//           //   break;
//           case "wrong-password":
//             // case "weak-password":
//             return LoginError(
//                 massingError: 'مشكلة في كلمة المرور', testError: false);
//             break;
//           // case "invalid-credential":
//           // return LoginError(massingError: 'فارغ', testError: false);
//           // return LoginError(
//           //     massingError: 'مشكلة في البريد الإكتروني', testError: false);

//           // break;
//           case "user-not-found":
//             return LoginError(
//                 massingError: 'مشكلة في البريد الإكتروني', testError: false);

//           case "channel-error":
//             return LoginError(massingError: 'فارغغ', testError: false);

//           // channel-error
//         }
//       }
//     });
//   }
}










//============================[signup]===================================//
  // try {
                  //   final credential = await FirebaseAuth.instance
                  //       .createUserWithEmailAndPassword(
                  //     email: email.text,
                  //     password: password.text,
                  //   );
                  //   Navigator.pushReplacement(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => BlocProvider(
                  //           create: (context) => ProducteCubit(),
                  //           child: HomePage()),
                  //     ),
                  //   );
                  // } on FirebaseAuthException catch (e) {
                  //   if (e.code == 'weak-password') {
                  //     print('The password provided is too weak.');
                  //   } else if (e.code == 'email-already-in-use') {
                  //     print('The account already exists for that email.');
                  //     // Alert(
                  //     //   context: context,
                  //     //   type: AlertType.error,
                  //     //   title: "Error",
                  //     //   desc: "The account already exists for that email.",
                  //     //   buttons: [
                  //     //     DialogButton(
                  //     //       child: Text(
                  //     //         "COOL",
                  //     //         style:
                  //     //             TextStyle(color: Colors.white, fontSize: 20),
                  //     //       ),
                  //     //       onPressed: () => Navigator.pop(context),
                  //     //       width: 120,
                  //     //     )
                  //     //   ],
                  //     // ).show();
                  //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  //       content: Text(
                  //         "تم الاضافة الى السلة",
                  //         style: TextStyle(
                  //             // fontWeight: FontWeight.bold,
                  //             fontSize: 20,
                  //             color: Colors.white),
                  //       ),
                  //       duration: Duration(seconds: 1),
                  //     ));
                  //   }
                  // } catch (e) {
                  //   print(e);
                  // }





//============================[login]===================================//
                  //  try {
                  //   final credential = await FirebaseAuth.instance
                  //       .signInWithEmailAndPassword(
                  //           email: email.text, password: password.text);
                  //   Navigator.pushReplacement(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: (context) => BlocProvider(
                  //           create: (context) => ProducteCubit(),
                  //           child: HomePage(),
                  //         ),
                  //       ));
                  // } on FirebaseAuthException catch (e) {
                  //   if (e.code == 'user-not-found') {
                  //     print('No user found for that email.');
                  //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  //       content: Text(
                  //         "تم الاضافة الى السلة",
                  //         style: TextStyle(
                  //             // fontWeight: FontWeight.bold,
                  //             fontSize: 20,
                  //             color: Colors.white),
                  //       ),
                  //       duration: Duration(seconds: 1),
                  //     ));

                  //     // AwesomeDialog(
                  //     //   context: context,
                  //     //   dialogType: DialogType.error,
                  //     //   animType: AnimType.rightSlide,
                  //     //   title: 'Error',
                  //     //   desc: 'No user found for that email.',
                  //     // ).show();
                  //     // Alert(
                  //     //   context: context,
                  //     //   type: AlertType.error,
                  //     //   title: "Error",
                  //     //   desc: "No user found for that email",
                  //     //   buttons: [
                  //     //     DialogButton(
                  //     //       child: Text(
                  //     //         "COOL",
                  //     //         style:
                  //     //             TextStyle(color: Colors.white, fontSize: 20),
                  //     //       ),
                  //     //       onPressed: () => Navigator.pop(context),
                  //     //       width: 120,
                  //     //     )
                  //     //   ],
                  //     // ).show();
                  //   } else if (e.code == 'wrong-password') {
                  //     print('Wrong password provided for that user.');
                  //     AwesomeDialog(
                  //       context: context,
                  //       dialogType: DialogType.error,
                  //       animType: AnimType.rightSlide,
                  //       title: 'Error',
                  //       desc: 'Wrong password provided for that user.',
                  //     ).show();
                  //   }
                  // } catch (e) {
                  //   print(e);
                  // }