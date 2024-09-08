// import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'package:furniture_shopping_app/core/auth/signup/screen/firebase_error/product.dart';

// class Firestore {
//   FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

//   Future<void> addFireBaseFireStore(
//       {required String userName,
//       required String email,
//       required String password}) async {
//     await firebaseFirestore.collection("ProductFireBase").add({
//       "userName": "${userName}",
//       "email": "${email}",
//       "password": "${password}",
//     });
//   }

//   Future<void> getFireBaseFireStore({required String email}) async {
//     await firebaseFirestore.collection("ProductFireBase").get().then((value) {
//       value.docs.forEach((e) {
//         print(e.data()["${email}"]);
//         e.data()["${email}"];
//       });
//       // List<QueryDocumentSnapshot> listDocs = value.docs;
//       // listDocs.forEach((e) {
//       //   print(e.);
//       //   // print(e.get(value));
//       // });
//     });
//   }
// }
