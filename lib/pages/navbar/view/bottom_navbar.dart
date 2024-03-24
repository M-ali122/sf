// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
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
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30), topLeft: Radius.circular(30)),
              color: AppColor.white
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
                          Appicons.home,
                          color: controller.currentIndex.value == 0 ? AppColor.primaryColor500 : AppColor.GreyScale500,
                          height: 24,
                          width: 24,  
                        ),
                        Text(
                          "Home",
                          style: TextStyle(
                            fontSize: 11,
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
                          Appicons.document,
                          color: controller.currentIndex.value == 1 ?AppColor.primaryColor500  : AppColor.GreyScale500,
                          height: 24.h,
                          width: 24.w,
                        ),
                        Text(
                          "Order",
                          style: TextStyle(
                            fontSize: 11,
                            color: controller.currentIndex.value == 1
                                ? AppColor.primaryColor500 
                                : AppColor.GreyScale500
                          ),
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
                          Appicons.diccovery,
                          color: controller.currentIndex.value == 2 ? AppColor.primaryColor500 : AppColor.GreyScale500,
                          height: 24.h,
                          width: 24.w,
                        ),
                        Text(
                          "Community",
                          style: TextStyle(
                            fontSize: 11,
                            color: controller.currentIndex.value == 2
                                ?AppColor.primaryColor500 
                                :AppColor.GreyScale500
                          ),
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
                          Appicons.profile,
                          color: controller.currentIndex.value == 3 ?AppColor.primaryColor500  : AppColor.GreyScale500,
                          height: 24.h,
                          width: 24.w,
                        ),
                        Text(
                          "Profile",
                          style: TextStyle(
                            fontSize: 11,

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