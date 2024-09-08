import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/my_colors.dart';
import '../../../../constants/stayles.dart';

class searchProduct extends StatefulWidget {
  const searchProduct({
    super.key,
  });

  @override
  State<searchProduct> createState() => _searchProductState();
}

class _searchProductState extends State<searchProduct> {
  final controllerTextForm = TextEditingController();

  void characterSreach(String value) {
    
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        margin:
            EdgeInsetsDirectional.symmetric(horizontal:15.w, vertical: 20.h),
        padding:
            EdgeInsetsDirectional.symmetric(horizontal: 10.w, vertical: 8.h),
        height: 52.h,
        decoration: BoxDecoration(
            color: MyColors.colorGrey.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12)),
        child: TextFormField(
          onChanged: characterSreach,
          controller: controllerTextForm,
          cursorColor: MyColors.color,
          // style:TextStyle(color: Color(0xff808080)) ,
          decoration: InputDecoration(
            prefixIcon: IconButton(onPressed: (){}, icon: Image.asset("assets/images/search.png",height: 30.h,width: 30.w,)),
            // prefixIcon: Icon(
            //   Icons.search,
            //   size: 35.sp,
            // ),
            border: InputBorder.none,
            hintText: "Search for furniture",
            hintStyle: TextStyles.font15hintText,
            
            // suffixIcon: Container(
            //   height: 70,
            //   child: SvgPicture.asset("assets/svg/68-setting-1.svg"),
            //   decoration: BoxDecoration(
            //     color: MyColors.color,
            //     borderRadius: BorderRadius.circular(12)
            //   ),
            // )
          ),
        ),
      ),
      Positioned(
        top: 20.h,
        right: 16.w,
        child: InkWell(
          onTap: (){

          },
          child: Container(
              height: 52.h,
              width: 52.w,
              child: Image.asset(
                "assets/images/setting-1.png",
                scale: 3.5,
              ),
              decoration: BoxDecoration(
                  color: MyColors.color,
                  borderRadius: BorderRadius.circular(12))),
        ),
      ),
    ]);
  }
}
