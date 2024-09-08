import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class buildButton extends StatelessWidget {
  // final String nameButton;
  final void Function()? onPressed;
  final dynamic text;

  const buildButton({
    super.key,
    // required this.nameButton,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        height: 50,
        color: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
        onPressed: onPressed,
        child: text);
  }
}
