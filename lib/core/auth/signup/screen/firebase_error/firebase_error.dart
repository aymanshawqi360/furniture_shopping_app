class FirebaseError {
  String massing = "";
  bool test = false;

  FirebaseError({required this.massing, required this.test});
}

class LoginError {
  String massingError = "";
  bool testError = false;

  LoginError({required this.massingError, required this.testError});
}

// class LoginError {
//   String? massingError;
//   bool? testError;

//   LoginError({String? massingError, bool? testError}) {
//     massingError = this.massingError;
//     testError = this.testError;
//   }
// }
