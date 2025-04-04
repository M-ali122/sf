import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:sf_app/helper/extensions/spacings.dart';

import 'package:sf_app/client_side_design/navbar/view/bottom_navbar.dart';

import 'package:sf_app/desinger_side/designer_navbar.dart/view/designer_side_navbar.dart';

import 'package:sf_app/helper/extensions/spacings.dart';
import 'package:sf_app/client_side_design/navbar/view/bottom_navbar.dart';

import 'package:sf_app/client_side_design/onboarding/controller/onboarding_controller.dart';
import 'package:sf_app/client_side_design/onboarding/view/explore_trending_style.dart';
import 'package:sf_app/client_side_design/onboarding/view/onboard_second_screen.dart';
import 'package:sf_app/client_side_design/onboarding/view/onboarding_third_screen.dart';
import 'package:sf_app/resources/color/app_color.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../helper/view/circleButton.dart';

class OnbaordingView extends GetWidget<OnboardingController> {
  static const String route = "OnboardingView";
  const OnbaordingView({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDesigner = controller.accountType.value == "Designer";
    return GetBuilder<OnboardingController>(
      init: OnboardingController(),
      builder: (controller) {
        return Scaffold(
          body: PageView(
            controller: controller.pagecontrol,
            onPageChanged: (index) {
              if (kDebugMode) {
                print(index.runtimeType);
              }
              controller.changePageIndex(index);
              // setState(() {
              //   islastpage = index == 3;
              // });
            },
            children: const [
              Explore_Trending(),
              OnboardSecond(),
              OnboardThird(),
            ],
          ),

          floatingActionButton:
              // ignore: unrelated_type_equality_checks
              controller.pageIndex == 1 || controller.pageIndex == 2
                  ? Stack(
                      children: [
                        Positioned(
                          // left: ,
                          // top: 0,
                          right: 60.w,
                          bottom: 0,
                          child: CircleButton(
                            onTap: () {
                              if (controller.isLast.isTrue) {
                                /// home screen call here

                                isDesigner
                                    ? Get.offAllNamed(
                                        DesingerBottomnavBar.route)
                                    : Get.offAllNamed(BottomnavBar.route);
                                // Get.offAllNamed()
                              } else {
                                controller.pagecontrol.nextPage(
                                    duration: const Duration(milliseconds: 500),
                                    curve: Curves.easeInOut);
                              }
                              // Get.toNamed(OnboardSecond.route);
                            },
                            icon: Icons.arrow_forward,
                          ),
                        ),
                        Positioned(
                          bottom: 87.h,
                          left: 0,
                          right: 0,
                          child: Center(
                            child: SmoothPageIndicator(
                              controller: controller.pagecontrol,
                              count: 3,
                              effect: const ExpandingDotsEffect(
                                spacing: 10,
                                dotHeight: 8,
                                dotWidth: 8,
                                activeDotColor: AppColor.primaryColor500,
                                dotColor: Color.fromRGBO(238, 238, 238, 1),
                                // activeDotColor: Colors.black
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 50.w,
                          bottom: 0,
                          child: CircleButton(
                            gradient: AppColor.buttonGredient,
                            foreground: AppColor.Dark1,
                            onTap: () {
                              controller.pagecontrol.previousPage(
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeInOut);
                              // Get.toNamed(OnboardSecond.route);
                            },
                            icon: Icons.arrow_back,
                          ),
                        ),
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SmoothPageIndicator(
                          controller: controller.pagecontrol,
                          count: 3,
                          effect: const ExpandingDotsEffect(
                            spacing: 10,
                            dotHeight: 8,
                            dotWidth: 8,
                            activeDotColor: AppColor.primaryColor500,
                            dotColor: Color.fromRGBO(238, 238, 238, 1),
                          ),
                        ),
                        24.height,
                        CircleButton(
                          onTap: () {
                            controller.pagecontrol.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeInOut);
                            // Get.toNamed(OnboardSecond.route);
                          },
                          icon: Icons.arrow_forward,
                        ),
                      ],
                    ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,

          // bottomSheet: controller.isLast.isFalse
          //     ? TextButton(
          //     onPressed: () async {
          //       // final prefs = acwait SharedPreferences.getInstance();
          //       // prefs.setBool('showhome', true);
          //
          //       // ignore: use_build_context_synchronously
          //       // Navigator.of(context).pushReplacement(MaterialPageRoute(
          //       //   builder: (context) {
          //       //     return const Login_Screen();
          //       //   },
          //       // ));
          //     },
          //     child: const Text('Start'))
          //     : Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     TextButton(
          //         onPressed: () {
          //           // pagecontrol.jumpToPage(3);
          //         },
          //         child: const Text('Skip')),
          //     SmoothPageIndicator(
          //       controller: controller.pagecontrol,
          //       count: 4,
          //       effect: const ExpandingDotsEffect(
          //         spacing: 15,
          //         // dotColor: Colors.black,
          //         // activeDotColor: Colors.black
          //       ),
          //     ),
          //     TextButton(
          //         onPressed: () {
          //           controller.pagecontrol.nextPage(
          //               duration: const Duration(milliseconds: 500),
          //               curve: Curves.easeInOut);
          //         },
          //         child: const Text('Next')),
          //   ],
          // ),
        );
      },
    );
  }
}
