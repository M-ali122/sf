import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/helper/extensions/spacings.dart';
import 'package:sf_app/resources/color/app_color.dart';

class OrderDetailScreen extends StatelessWidget {
  final int? index;
  static String route = 'OrderDetailScreen';
  OrderDetailScreen({super.key, this.index});

  final theme = Get.theme;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 30.h,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            height: 170.h,
            width: 380.w,
            decoration: const BoxDecoration(boxShadow: [
              BoxShadow(
                  blurRadius: 60,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                  color: Color.fromRGBO(4, 6, 15, 0.05)),
            ]),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                color: AppColor.white,
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
                          color: AppColor.backGroundSilver),
                      child: Center(
                        child: Image.asset('assets/shoe.png'),
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
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'Client',
                          style: theme.textTheme.bodySmall,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          height: 25.h,
                          width: 60.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: const Color.fromRGBO(250, 204, 21, 0.08)),
                          child: Center(
                            child: Text(
                              'Pending',
                              style: GoogleFonts.mulish(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 10.h,
                                  color: AppColor.secondaryColor500),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          children: [
                            Text(
                              '100.00 SAR',
                              style: theme.textTheme.bodyLarge,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            height: 112.h,
            width: Get.width,
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(4, 6, 15, 0.05), // Shadow color
                  spreadRadius: 0,
                  blurRadius: 60,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: AppColor.white,
              ),
              child: Column(
                children: [
                  Expanded(
                    child: ListTile(
                      title: Text(
                        'Client Name',
                        style: GoogleFonts.mulish(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                        ),
                      ),
                      trailing: Text(
                        'Name',
                        style: GoogleFonts.mulish(
                            fontWeight: FontWeight.w700,
                            fontSize: 16.sp,
                            color: AppColor.secondaryColor500),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      title: Text(
                        'Client address',
                        style: GoogleFonts.mulish(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                        ),
                      ),
                      trailing: Text(
                        'Location name',
                        style: GoogleFonts.mulish(
                            fontWeight: FontWeight.w700,
                            fontSize: 16.sp,
                            color: AppColor.secondaryColor500),
                      ),
                    ),
                  ),
                  10.height,
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            height: 235.h,
            width: Get.width,
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(4, 6, 15, 0.05), // Shadow color
                  spreadRadius: 0,
                  blurRadius: 60,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: AppColor.white,
              ),
              child: Column(
                children: [
                  Expanded(
                    child: ListTile(
                      title: Text(
                        'Product price',
                        style: GoogleFonts.mulish(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                        ),
                      ),
                      trailing: Text(
                        '100 SAR',
                        style: GoogleFonts.mulish(
                            fontWeight: FontWeight.w700,
                            fontSize: 16.sp,
                            color: AppColor.secondaryColor500),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      title: Text(
                        'Product quantity',
                        style: GoogleFonts.mulish(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                        ),
                      ),
                      trailing: Text(
                        '02',
                        style: GoogleFonts.mulish(
                            fontWeight: FontWeight.w700,
                            fontSize: 16.sp,
                            color: AppColor.secondaryColor500),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      title: Text(
                        'Shipping cost',
                        style: GoogleFonts.mulish(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                        ),
                      ),
                      trailing: Text(
                        '20 SAR',
                        style: GoogleFonts.mulish(
                            fontWeight: FontWeight.w700,
                            fontSize: 16.sp,
                            color: AppColor.secondaryColor500),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      title: Text(
                        'Total cost',
                        style: GoogleFonts.mulish(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                        ),
                      ),
                      trailing: Text(
                        '220 SAR',
                        style: GoogleFonts.mulish(
                            fontWeight: FontWeight.w700,
                            fontSize: 16.sp,
                            color: AppColor.secondaryColor500),
                      ),
                    ),
                  ),
                  10.height,
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            height: 186.h,
            width: Get.width,
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(4, 6, 15, 0.05), // Shadow color
                  spreadRadius: 0,
                  blurRadius: 60,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: AppColor.white,
              ),
              child: Column(
                children: [
                  Expanded(
                    child: ListTile(
                      title: Text(
                        'Purchase date',
                        style: GoogleFonts.mulish(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                        ),
                      ),
                      trailing: Text(
                        '10/01/2024',
                        style: GoogleFonts.mulish(
                            fontWeight: FontWeight.w700,
                            fontSize: 16.sp,
                            color: AppColor.secondaryColor500),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      title: Text(
                        'Payment method',
                        style: GoogleFonts.mulish(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                        ),
                      ),
                      trailing: Text(
                        'visa card',
                        style: GoogleFonts.mulish(
                            fontWeight: FontWeight.w700,
                            fontSize: 16.sp,
                            color: AppColor.secondaryColor500),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      title: Text(
                        'Transaction ID',
                        style: GoogleFonts.mulish(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                        ),
                      ),
                      trailing: Text(
                        '#541564165',
                        style: GoogleFonts.mulish(
                            fontWeight: FontWeight.w700,
                            fontSize: 16.sp,
                            color: AppColor.secondaryColor500),
                      ),
                    ),
                  ),
                  10.height,
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
        ],
      ),
    );
  }
}
