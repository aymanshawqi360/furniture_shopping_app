import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'my_colors.dart';
// import 'package:furniture_shopping_app/core/constants/my_colors.dart';

class TextStyles {
  static TextStyle font15hintText = TextStyle(
      fontSize: 15.sp, color: Color(0xff808080), fontWeight: FontWeight.w300);

  static TextStyle fontTitleApi = TextStyle(
      fontWeight: FontWeight.w500, fontSize: 14.sp, color: Color(0xff242424));


  static TextStyle fontPriceApi = TextStyle(
    fontWeight: FontWeight.bold,
    color: MyColors.colorGreen,
    fontSize: 14.sp
  );
}
