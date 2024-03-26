// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sf_app/desinger_side/navbar/controller/nabbar_controller.dart';
import 'package:sf_app/resources/color/app_color.dart';
import 'package:sf_app/resources/icon/icon.dart';

class DesingerBottomnavBar extends GetWidget<DesignerBottomNavBarController> {
  static const String route = 'DesingerBottomnavBar';
  const DesingerBottomnavBar({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DesignerBottomNavBarController>(
      init: DesignerBottomNavBarController(),
      builder: (controller) {
        return Scaffold(
          body: Container(
            // paddi  ng: const EdgeInsets.only(top: 16),
            alignment: Alignment.center,
            child: controller.pages[controller.currentIndex.value],
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
                color: AppColor.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 60,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                    color: Color.fromRGBO(4, 6, 15, 0.04)
                  )
                ]
                ),
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
                          Appicons.category,
                          color: controller.currentIndex.value == 0
                              ? AppColor.primaryColor500
                              : AppColor.GreyScale500,
                          height: 24.h,
                          width: 24.w,
                        ),
                        Text(
                          "Dashboard",
                          style: TextStyle(
                            fontSize: 11.sp,
                            color: controller.currentIndex.value == 0
                                ? AppColor.primaryColor500
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
                          Appicons.documentBorder,
                          color: controller.currentIndex.value == 1
                              ? AppColor.primaryColor500
                              : AppColor.GreyScale500,
                          height: 24.h,
                          width: 24.w,
                        ),
                        Text(
                          "Order",
                          style: TextStyle(
                              fontSize: 11.sp,
                              color: controller.currentIndex.value == 1
                                  ? AppColor.primaryColor500
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
                        // SvgPicture.string(
                        //   Appicons.diccovery,
                        //   color: controller.currentIndex.value == 2
                        //       ? AppColor.primaryColor500
                        //       : AppColor.GreyScale500,
                        //   height: 24.h,
                        //   width: 24.w,
                        // ),
                        Container(
                          height: 40.h,
                          width: 40.w,
                          decoration: ShapeDecoration(
                            shape: CircleBorder(),
                            color: AppColor.primaryColor500,
                             shadows: [
                              BoxShadow(
                                blurRadius: 24,
                                offset: Offset(4,8),
                                spreadRadius: 0,
                                color: Color.fromRGBO(79, 99, 61, 0.2),
                              ),
                             ]
                            ),
                            child: Center(
                              child: Icon(Icons.add,color: AppColor.white,),
                            ),
                        ),
                        // Text(
                        //   "Community",
                        //   style: TextStyle(
                        //       fontSize: 11.sp,
                        //       color: controller.currentIndex.value == 2
                        //           ? AppColor.primaryColor500
                        //           : AppColor.GreyScale500),
                        // )
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
                          Appicons.discoveryBorder,
                          color: controller.currentIndex.value == 2
                              ? AppColor.primaryColor500
                              : AppColor.GreyScale500,
                          height: 24.h,
                          width: 24.w,
                        ),
                        Text(
                          "Community",
                          style: TextStyle(
                              fontSize: 11.sp,
                              color: controller.currentIndex.value == 2
                                  ? AppColor.primaryColor500
                                  : AppColor.GreyScale500),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    controller.changePage(4);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(2.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 17.h,
                        ),
                        SvgPicture.string(
                          Appicons.profileBorder,
                          color: controller.currentIndex.value == 3
                              ? AppColor.primaryColor500
                              : AppColor.GreyScale500,
                          height: 24.h,
                          width: 24.w,
                        ),
                        Text(
                          "Profile",
                          style: TextStyle(
                            fontSize: 11.sp,
                            color: controller.currentIndex.value == 3
                                ? Colors.white
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
