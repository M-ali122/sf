import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/helper/extensions/spacings.dart';

import '../../../resources/icon/svgs.dart';
import '../controller/onboarding_controller.dart';

class OnboardSecond extends StatelessWidget {
  static const String route = 'OnboardSecond';

  const OnboardSecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Get.theme;
     OnboardingController onboardingController = Get.put(OnboardingController());
    bool isDesigner = onboardingController.accountType.value == "Designer";
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 323.w,
            top: -57.h,
            child: SvgPicture.string(
              Svgs.appbarCircle,
              width: 197.w,
              height: 197.w,
            ),
          ),
          Positioned(
              top: 60.h,
              left: Get.width * 0.87,
              child: GestureDetector(
                onTap: () {
                  onboardingController.pagecontrol.jumpToPage(2);
                },
                child: Text('Skip',
                    style: GoogleFonts.mulish(
                        color: const Color.fromRGBO(71, 87, 54, 1),
                        decoration: TextDecoration.underline,
                        decorationStyle: TextDecorationStyle.solid,
                        decorationThickness: 2,
                        fontSize: 16,
                        fontWeight: FontWeight.w700)),
              )),
          Positioned(
            top: 57.h,
            left: 97.w,
            child: SizedBox(
              height: 446.81.h,
              width: 235.w,
              child: Image.asset(
                'assets/svgSecond.png',
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
          Positioned(
            top: 370.h,
            child: Container(
              width: Get.width,
              height: 185.h,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Colors.white10.withOpacity(0.0),
                    Colors.white54,
                    Colors.white70,
                    Colors.white,
                  ])),
            ),
          ),
          Positioned(
            top: 335.43.h,
            child: SvgPicture.string(
              Svgs.halfCircleDown,
              width: 155.99.w,
              height: 155.99.h,
            ),
          ),
          Positioned(
            bottom: 0,
            width: Get.width,
            child: Container(
              color: Colors.white,
              height: 365.h,
              padding: const EdgeInsets.all(36),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    isDesigner ? 'Manage Your Orders':'Build Your Wishlist',
                    style: theme.textTheme.headline4,
                  ),
                  8.height,
                  Text(
                    isDesigner  ? "Ready to turn your passion into profit? Open" 
                    "your virtual store. Set prices, manage inventory, and watch"
                    " your designs become the next fashion trend!"
                    : 
                    "Found something you love? Add it to your wishlist! Whether you'"
                    "re browsing for inspiration or ready to make a purchase,"
                    " It is your closet filled with  fashion finds.",
                    style: GoogleFonts.mulish(
                      fontWeight: FontWeight.w500,
                      fontSize: 18.sp,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
