import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../constants/stayles.dart';
import '../../../../data/model/producte_api.dart';
import '../../../../constants/my_colors.dart';


class BuildProducer extends StatefulWidget {
  final Product product;
  final function;
  // final ProductApi productApi;
  BuildProducer({super.key, required this.product,required this.function});

  @override
  State<BuildProducer> createState() => _BuildProducerState();
}

class _BuildProducerState extends State<BuildProducer> {
  // Product product = Product();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            // width: 157.72.w,
            // height: 208.48.h,
            // color: Color(0xffFFFFFF),
            decoration: BoxDecoration(
                // color: Color(0xffFFFFFF),
                color: Colors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10.8),
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
                ]
                ),
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 45.h),
                  child: Image.asset("assets/images/Ellipse 11.png"),
                ),
                Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Hero(
                        // product.getId(widget.number)
                        tag:widget.product.id ,
                        child: Container(
                          padding: EdgeInsetsDirectional.only(bottom: 20.h),
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          child: Image.asset(
                            // product.getProductImages(widget.number).toString(),
                            "${widget.product.image.toString()}",
                            scale: 5.0,
                          ),
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   height: 10.h,
                    // ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.w, bottom: 0.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "${widget.product.title.toString()}",
                            // product.getProductTitle(widget.number).toString(),
                              style: TextStyles.fontTitleApi),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.w, bottom: 17.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$${widget.product.price.toString()}",
                            // "\$${product.getProductPrice(widget.number).toString()}",
                            style: TextStyles.fontPriceApi,
                          ),
                          InkWell(
                            onTap: widget.function,
                            child: Container(
                              margin: EdgeInsets.only(right: 10.w),
                              width: 23.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Colors.white,
                                  border: Border.all(color: Colors.black26)),
                              child: Padding(
                                  padding: EdgeInsets.only(right: 0.w),
                                  child: Icon(
                                    Icons.arrow_forward,
                                    size: 18,
                                    color: MyColors.color,
                                  )),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
