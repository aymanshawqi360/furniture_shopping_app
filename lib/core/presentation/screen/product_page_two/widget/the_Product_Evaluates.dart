import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../business_logic/cubit/producte_cubit.dart';
import '../../../../constants/my_colors.dart';
import '../../../../data/model/producte_api.dart';

class TheProductEvaluate extends StatefulWidget {
  final Product product;
  TheProductEvaluate({super.key, required this.product});

  @override
  State<TheProductEvaluate> createState() => _TheProductEvaluateState();
}

class _TheProductEvaluateState extends State<TheProductEvaluate> {
  // final Product product = Product();

  bool ff = false;
  int numberStar = 0;
  void _star() {
    if (ff) {
      numberStar -= 1;
      ff = false;
    } else {
      numberStar += 1;
      ff = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        InkWell(onTap: () {
          // if(ff==true){
          //   context.read<ProducteCubit>().theProductEvaluatesTrue(ff);
          // }else{

          // }
          // ff = true;
          _star();
          context.read<ProducteCubit>().theProductEvaluatesTrue(ff);
        }, child: BlocBuilder<ProducteCubit, ProducteState>(
            builder: (context, state) {
          return Icon(Icons.star_rounded,
              color: ff == true ? Colors.amber : Colors.black);

          // return Icon(Icons.star_rounded, color: Colors.black);
          // return Icon(Icons.star_rounded, color: Colors.amber);
        })),
        Text(
          // product.getProductevaluateAProduct(widget.numberIndex).toString(),
          "${widget.product.evaluateAProduct.toString()}",
          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: 10.w,
        ),
        Text(
          // product.getProductReviews(widget.numberIndex).toString(),
          "${widget.product.Reviews.toString()}",
          style: TextStyle(color: MyColors.colorGrey, fontSize: 12.sp),
        ),
      ],
    );
  }
}
