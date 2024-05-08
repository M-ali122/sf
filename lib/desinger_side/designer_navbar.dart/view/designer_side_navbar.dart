// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/client_side_design/Add%20flows/view/Create%20event/view/create_event.dart';
import 'package:sf_app/client_side_design/Add%20flows/view/Create%20event/view/create_eventt.dart';
import 'package:sf_app/client_side_design/Add%20flows/view/Create%20post/view/create_post.dart';
import 'package:sf_app/client_side_design/Add%20flows/view/Create%20product/view/create_product.dart';
import 'package:sf_app/desinger_side/designer_navbar.dart/controller/nabbar_controller.dart';
import 'package:sf_app/client_side_design/onboarding/controller/onboarding_controller.dart';
import 'package:sf_app/resources/color/app_color.dart';
import 'package:sf_app/resources/icon/icon.dart';

class DesingerBottomnavBar extends GetWidget<DesignerBottomNavBarController> {
  static const String route = 'DesingerBottomnavBar';
  const DesingerBottomnavBar({super.key});
  @override
  Widget build(BuildContext context) {
    OnboardingController onboardingController = Get.put(OnboardingController());
    bool isDesigner = onboardingController.accountType.value == "Designer";
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
                boxShadow: const [
                  BoxShadow(
                      blurRadius: 60,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                      color: Color.fromRGBO(4, 6, 15, 0.04))
                ]),
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
                          controller.currentIndex.value == 0
                              ? Appicons.category
                              : Appicons.categoryBorder,
                          color: controller.currentIndex.value == 0
                              ? AppColor.primaryColor500
                              : AppColor.GreyScale500,
                          height: 24.h,
                          width: 24.w,
                        ),
                        Text(
                          "Dashboard",
                          style: GoogleFonts.mulish(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w700,
                              color: controller.currentIndex.value == 0
                                  ? const Color.fromRGBO(71, 87, 54, 1)
                                  : const Color.fromRGBO(158, 158, 158, 1)),
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
                          controller.currentIndex.value == 1
                              ? Appicons.document
                              : Appicons.documentBorder,
                          color: controller.currentIndex.value == 1
                              ? AppColor.primaryColor500
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
                                  : const Color.fromRGBO(158, 158, 158, 1)),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    controller.changePage(2);
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          child: Stack(
                            children: [
                              Positioned.fill(
                                child: Padding(
                                  padding: EdgeInsets.only(top: 540.h),
                                  child: Center(
                                    child: Container(
                                      height: 200.h,
                                      width: 200.w,
                                      // color: Colors.white,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/Union.png")),
                                      ),
                                      child: Center(
                                        child: Column(
                                          children: [
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            GestureDetector(
                                              onTap: (){
                                                Get.to(CreatePostScreen());
                                              },
                                              child: Text(
                                                "Post",
                                                style: TextStyle(
                                                    fontSize: 20.sp,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                Get.to(const CreateEventt());
                                              },
                                              child: Text(
                                                "Event",
                                                style: TextStyle(
                                                    fontSize: 20.sp,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                Get.to(CreateProduct());
                                              },
                                              child: Text(
                                                "Product",
                                                style: TextStyle(
                                                    fontSize: 20.sp,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
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
                          decoration: const ShapeDecoration(
                              shape: CircleBorder(),
                              color: AppColor.primaryColor500,
                              shadows: [
                                BoxShadow(
                                  blurRadius: 24,
                                  offset: Offset(4, 8),
                                  spreadRadius: 0,
                                  color: Color.fromRGBO(79, 99, 61, 0.2),
                                ),
                              ]),
                          child: const Center(
                            child: Icon(
                              Icons.add,
                              color: AppColor.white,
                            ),
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
                          controller.currentIndex.value == 3
                              ? Appicons.diccovery
                              : Appicons.discoveryBorder,
                          color: controller.currentIndex.value == 3
                              ? AppColor.primaryColor500
                              : AppColor.GreyScale500,
                          height: 24.h,
                          width: 24.w,
                        ),
                        Text(
                          "Community",
                          style: TextStyle(
                              fontSize: 11.sp,
                              color: controller.currentIndex.value == 3
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
                          controller.currentIndex.value == 4
                              ? Appicons.profile
                              : Appicons.profileBorder,
                          color: controller.currentIndex.value == 4
                              ? AppColor.primaryColor500
                              : AppColor.GreyScale500,
                          height: 24.h,
                          width: 24.w,
                        ),
                        Text(
                          "Profile",
                          style: TextStyle(
                            fontSize: 11.sp,
                            color: controller.currentIndex.value == 4
                                ? AppColor.primaryColor500
                                : AppColor.GreyScale500,
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
