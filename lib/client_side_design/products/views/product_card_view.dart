import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/helper/view/Appbutton.dart';
import 'package:sf_app/helper/view/bottom_sheet.dart';
import 'package:sf_app/client_side_design/order/view/order_detail_tabs.dart';
import 'package:sf_app/client_side_design/products/db/product_cart_static_data.dart';
import 'package:sf_app/resources/color/app_color.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Get.theme;


  var itemStatusTypeColor = [
     const Color.fromRGBO(201, 179, 114, 1),
    const Color.fromRGBO(255, 87, 38, 1),
    const Color.fromRGBO(71, 87, 54, 1)
  ]; 

  var orderStatusContainerColor = [
    const Color.fromRGBO(250, 204, 21, 0.08),
    const Color.fromRGBO(255, 152, 0, 0.08),
    const Color.fromRGBO(76, 175, 80, 0.08)
  ];
    return ListView.builder(
      shrinkWrap: true,
      itemCount: ProductCartStaticData().productCart.length,
      itemBuilder: (context, index) {
        return Padding(
          padding:  EdgeInsets.only(top: 10.0.h),
          child: GestureDetector(
                      onTap: (){
                        _showDetailBottomSheet(context);
                      },
                      child: Container(
                        height: 170.h,
                        width: 380.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32),
                          color: AppColor.white,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 60,
                              offset: Offset(0, 4),
                              spreadRadius: 0,
                              color: Color.fromRGBO(4, 6, 15, 0.05)
                            )
                          ]
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 33.h,
                              left: 20.w,
                              child: Container(
                                height: 102.h,
                                width: 120.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: AppColor.backGroundSilver
                                ),
                                child: Center(
                                  child: Image.asset(
                                    ProductCartStaticData().productCart[index].image.toString(),
                                   height: 81.h,
                                   width: 80.w,  
                                  ),
                                  ),
                              ),
                            ),
                            Positioned(
                              left: 150.w,
                              top: 20.h,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Product Name',
                                    style: theme.textTheme.labelLarge,
                                    ),
                                     SizedBox(height: 10.h,),
                                  Text('Client Name',
                                   style: theme.textTheme.bodySmall,
                                  ),
                                  SizedBox(height: 10.h),
                                    Container(
                                      height: 25.h,
                                      width: 80.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        color: orderStatusContainerColor[index]
                                      ),
                                      child: Center(
                                        child: Text(
                                          ProductCartStaticData().productCart[index].productStatus,
                                          style: GoogleFonts.mulish(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 10.sp,
                                            color: itemStatusTypeColor[index]
                                          ),
                                          ),
                                      ),
                                    ),
                                  SizedBox(height: 10.sp),
                                  Row(
                                    children: [
                                      Text('44.00 SAR',
                                      style: theme.textTheme.bodyLarge,
                                      ),
                                       SizedBox(width: 15.w,),
                                      AppButton(
                                        title: 'See detail',
                                         onTap: (){
                                          Get.toNamed(OrderTabbarScreen.route);
                                         },
                                         width: 100.w,
                                         height: 32.h,
                                         )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )),
        );
      },
    );
  }
  void _showDetailBottomSheet(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return OrderDetailBottomSheet(); // Use the bottom sheet class here
      },
    );
  }
}