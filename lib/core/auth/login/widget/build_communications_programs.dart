import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class buildCommunicationsPrograms extends StatefulWidget {
  final Image image;
   void  Function ()onPressed;
   buildCommunicationsPrograms({
    super.key,
    required this.image,
    required this.onPressed,
  });

  @override
  State<buildCommunicationsPrograms> createState() => _buildCommunicationsProgramsState();
}

class _buildCommunicationsProgramsState extends State<buildCommunicationsPrograms> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55.w,
      height: 50.h,
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
        color: Colors.black,
        onPressed: widget.onPressed,
        child: widget.image,
      ),
    );
  }
}
