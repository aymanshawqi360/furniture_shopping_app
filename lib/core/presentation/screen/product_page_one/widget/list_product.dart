import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../business_logic/cubit/producte_cubit.dart';
// import 'package:furniture_shopping_app/core/business_logic/cubit/producte_cubit.dart';
import 'package:furniture_shopping_app/core/constants/my_colors.dart';
import 'package:furniture_shopping_app/core/data/model/product_List.dart';
// import 'package:furniture_shopping_app/core/data/model/producte.dart';

class buildListProduct extends StatefulWidget {
  // final ProductList productLists;
  // final int numberIndex;
  const buildListProduct({
    super.key,
    // required this.productLists,
    // required this.numberIndex,
  });

  @override
  State<buildListProduct> createState() => _buildListProductState();
}

class _buildListProductState extends State<buildListProduct> {
  // final ProductList productList;
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.h,
      child: BlocBuilder<ProducteCubit, ProducteState>(
        builder: (context, state) {
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: productList.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    margin: EdgeInsetsDirectional.symmetric(horizontal: 20.w),
                    height: 44.h,
                    width: 44.w,
                    decoration: BoxDecoration(
                        // image: DecorationImage(
                        //     image: AssetImage(
                        //       productList[index].image,
                        //     ),
                        //     scale: 3.5),
                        color: number == index
                            ? MyColors.color
                            : MyColors.colorGrey.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10)),
                    child: InkWell(
                        onTap: () {
                          BlocProvider.of<ProducteCubit>(context)
                              .counterListProduct(index);
                          number = index;
                        },
                        child: Image.asset(
                          productList[index].image,
                          scale: 3.5,color:  number == index
                            ? Colors.white
                            : MyColors.color,
                        )),
                  ),
                  Text(
                    productList[index].title,
                    style: TextStyle(
                        fontSize: 10.sp,
                        color: number == index
                            ? MyColors.color
                            : MyColors.colorGrey),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}


// InkWell(
//       onTap: () {
//         // context.read<ProducteCubit>().counterListProduct(number);
//         setState(() {
//           number = widget.numberIndex;
//         });
//       },
//       child: Column(
//         mainAxisSize: MainAxisSize.max,
//         children: [
        
            

//                  Container(
//                 margin: EdgeInsetsDirectional.symmetric(horizontal: 20.w),
//                 height: 44.h,
//                 width: 44.w,
//                 decoration: BoxDecoration(
//                     image: DecorationImage(
//                         image: AssetImage(
//                           widget.productLists.image,
//                         ),
//                         scale: 3.5),
//                     color:number==widget.numberIndex
//                         ? MyColors.color
//                       : Color(0xffFFFFFF),
//                     borderRadius: BorderRadius.circular(12)),
//               ),
              
            
          
//           Text(
//             widget.productLists.title,
//             style: TextStyle(
//                 fontSize: 13.sp,
//                 color: number == widget.numberIndex
//                     ? MyColors.color
//                     : MyColors.colorGrey),
//           )
//         ],
//       ),
//     )};