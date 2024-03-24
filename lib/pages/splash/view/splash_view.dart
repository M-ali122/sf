import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:sf_app/resources/color/app_color.dart';

import '../controller/controller.dart';

class Splash_View extends GetWidget<SplashController> {
  static const String route = 'Splash_View';

  const Splash_View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: SplashController(),
      builder: (controller) {
        return Scaffold(
          body: Stack(
            children: [
              //Top Circle
              Positioned(
                left: 257.w,
                top: -36.h,
                child: Container(
                  height: 197.h,
                  width: 197.w,
                  decoration: const ShapeDecoration(
                    shape: CircleBorder(
                      side: BorderSide(
                        color: Color(0xffC9B372),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Center(child: Image.asset('assets/splashlogo.png')),
              ),
              //Bottom Circle
              Positioned(
                left: -175.w,
                bottom: -5.h,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 334.h,
                    width: 334.w,
                    alignment: Alignment.center,
                    decoration: const ShapeDecoration(
                      shape: CircleBorder(
                        side: BorderSide(
                          color: AppColor.borderColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 90.h,
                left: 0,
                right: 0,
                child: SpinKitCircle(
                  color: Get.theme.secondaryHeaderColor,
                  size: 60.0,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
