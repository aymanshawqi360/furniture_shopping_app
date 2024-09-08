import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../constants/my_colors.dart';

Widget counterProduct(Icon icons, function) {
  return  InkWell(
    onTap: function,
    child: Container(
      
                        width: 22.w,
                        height: 22.h,
                        decoration: BoxDecoration(
                          color: MyColors.colorGrey.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child:icons,
                      ),
  );
}
