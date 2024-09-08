import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_shopping_app/core/auth/login/screen/login.dart';

class ProductPageNotification extends StatelessWidget {
  const ProductPageNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("FurnitureCo./Profile"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 10.w),
        child: Container(
          padding: EdgeInsetsDirectional.symmetric(vertical: 10.w),
          width: double.infinity,
          decoration: BoxDecoration(
              // color: Colors.black,
              color: Colors.grey.withOpacity(0.1),
              // borderRadius: BorderRadius.circular(10.8),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade600,
                  // color: Color(0xffFFFFFF),
                  spreadRadius: 0.0,
                  blurRadius: 0,
                  offset: const Offset(0, 0),
                ),
                const BoxShadow(
                    color: Colors.white,
                    offset: Offset(-0, -0),
                    blurRadius: 0,
                    spreadRadius: 0.0)
              ]),
          child: Row(
            children: [
              IconButton(
                  onPressed: () async {
                    await FirebaseAuth.instance.signOut();
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                  icon: Icon(
                    Icons.exit_to_app,
                    size: 30,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
