// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/pages/navbar/controller/navbarController.dart';
import 'package:sf_app/resources/color/app_color.dart';
import 'package:sf_app/resources/icon/icon.dart';

class BottomnavBar extends GetWidget<BottomNavBarController> {
  static const String route = 'bottomnavbar';
  const BottomnavBar({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavBarController>(
      init: BottomNavBarController(),
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: Container(
              padding: const EdgeInsets.only(top: 16),
              alignment: Alignment.center,
              child: controller.pages[controller.currentIndex.value],
            ),
          ),
          bottomNavigationBar: Container(
            height: 75.h,
            width: 375.w,
            margin: EdgeInsets.only(bottom: 16.h),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30.r),
                  topLeft: Radius.circular(30.r),
                ),
                color: AppColor.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    controller.changePage(0);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(2.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 17.h,
                        ),
                        SvgPicture.string(
                          controller.currentIndex.value == 0? Appicons.home: Appicons.homeBorder,
                          color: controller.currentIndex.value == 0
                              ? const Color.fromRGBO(71, 87, 54, 1)
                              : AppColor.GreyScale500,
                          height: 24.h,
                          width: 24.w,
                        ),
                        Text(
                          "Home",
                          style: GoogleFonts.mulish(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w700,
                            color: controller.currentIndex.value == 0
                                ? const Color.fromRGBO(71, 87, 54, 1)
                                : AppColor.GreyScale500,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    controller.changePage(1);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(2.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 17.h,
                        ),
                        SvgPicture.string(
                          controller.currentIndex == 1? Appicons.document:Appicons.documentBorder ,
                          color: controller.currentIndex.value == 1
                              ? const Color.fromRGBO(71, 87, 54, 1)
                              : AppColor.GreyScale500,
                          height: 24.h,
                          width: 24.w,
                        ),
                        Text(
                          "Order",
                          style: GoogleFonts.mulish(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w700,
                              color: controller.currentIndex.value == 1
                                  ? const Color.fromRGBO(71, 87, 54, 1)
                                  : AppColor.GreyScale500),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    controller.changePage(2);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(2.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 17.h,
                        ),
                        SvgPicture.string(
                         controller.currentIndex.value== 2?Appicons.diccovery: Appicons.discoveryBorder,
                          color: controller.currentIndex.value == 2
                              ? const Color.fromRGBO(71, 87, 54, 1)
                              : AppColor.GreyScale500,
                          height: 24.h,
                          width: 24.w,
                        ),
                        Text(
                          "Community",
                          style: GoogleFonts.mulish(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w700,
                              color: controller.currentIndex.value == 2
                                  ? const Color.fromRGBO(71, 87, 54, 1)
                                  : AppColor.GreyScale500),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    controller.changePage(3);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(2.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 17.h,
                        ),
                        SvgPicture.string(
                           controller.currentIndex.value == 3?Appicons.profile: Appicons.profileBorder,
                          color: controller.currentIndex.value == 3
                              ? const Color.fromRGBO(71, 87, 54, 1)
                              : AppColor.GreyScale500,
                          height: 24.h,
                          width: 24.w,
                        ),
                        Text(
                          "Profile",
                          style: GoogleFonts.mulish(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w700,
                            color: controller.currentIndex.value == 3
                                ? const Color.fromRGBO(71, 87, 54, 1)
                                : const Color(0xff5E5E67),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
