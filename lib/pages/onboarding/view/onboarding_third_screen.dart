import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/helper/extensions/spacings.dart';

import '../../../../resources/icon/svgs.dart';
import '../controller/onboarding_controller.dart';

class OnboardThird extends StatelessWidget {
  static const String route = 'OnboardThird';

  const OnboardThird({Key? key}) : super(key: key);

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
                'assets/onboarding3.png',
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
                    isDesigner ? 'Enjoy the community ': 'Shop with Confidence',
                    style: theme.textTheme.headline4,
                  ),
                  8.height,
                  Text(
                  isDesigner ? "Engage with fellow designers, fashion bloggers,"
                  " and potential customers. Follow your favorite designers,"
                  " participate in discussions and more!"
                  :
                  "Ready to elevate your wardrobe? Shop confidently "
                    "from a diverse range of brands, designers, and "
                    "styles. Enjoy secure transactions, easy returns, and deals !",
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
