import 'package:flutter/material.dart';

import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingLogin extends StatelessWidget {
  const LoadingLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Image(image: AssetImage("assets\images\signup.gif")));
  }
}
