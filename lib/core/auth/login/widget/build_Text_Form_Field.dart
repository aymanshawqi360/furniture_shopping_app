import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class buildTextFormField extends StatelessWidget {
  final String hintText;
  final TextEditingController controllerText;
  buildTextFormField({
    super.key,
    required this.hintText,
    required this.controllerText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controllerText,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 14.w, horizontal: 20.h),
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey.shade500, fontSize: 15.sp),
        filled: true,
        fillColor: Colors.grey.shade300,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          // borderSide: BorderSide(color: Color.fromARGB(255, 89, 89, 89))
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Color.fromARGB(255, 249, 248, 248))),
      ),
    );
  }
}
