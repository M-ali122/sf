import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../resources/icon/svgs.dart';
import '../controller/onboarding_controller.dart';

class OnboardSecond extends StatelessWidget {
  static const String route = 'OnboardSecond';

  const OnboardSecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Get.theme;
    OnboardingController onboardingController = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: Get.width * 0.79,
            top: -10,
            child: SvgPicture.string(Svgs.appbarCircle),
          ),
          Positioned(
            top: 78,
            left: Get.width * 0.87,
            child: Container(
              width: 35, // Adjust the width of the underline as needed
              height: 1.5, // Adjust the height of the underline as needed
              color: Colors.black, // Adjust the color of the underline as needed
            ),
          ),
          Positioned(
              top: 60,
              left: Get.width * 0.87,
              child: GestureDetector(
                onTap: (){
                  onboardingController.pagecontrol.jumpToPage(2);
                },
                child: Text('Skip',style: GoogleFonts.mulish(
                    color: const Color.fromRGBO(71, 87, 54, 1),
                    fontSize:16,
                    fontWeight: FontWeight.w700
                )),
              )),

          Positioned(
            top: 50,
            left: Get.width * 0.2,
            child: SizedBox(
              height: 400,
              width: 250,
              child: Image.asset('assets/svgSecond.png', fit: BoxFit.scaleDown,),
            ),
          ),

          Positioned(
            top: 240,
            child: Container(
              width: Get.width,
              height: 185,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.white10.withOpacity(0.0),
                        Colors.white54,
                        Colors.white70,
                        Colors.white,
                      ]
                  )
              ),
            ),
          ),
          Positioned(
            top: 220,
            // left: -20,
            child: SvgPicture.string(Svgs.halfCircleDown),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 130,
              left: 0,
              right: 0,
            ),
            child: Center(
              child: Text(
                'Build Your Wishlist',
                style: theme.textTheme.headline4,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: Get.height * 0.6,
                left: 0,
                right: 0
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Found something you love? Add it to your wishlist! Whether you'"
                "re browsing for inspiration or ready to make a purchase, It is your closet filled with  fashion finds.",
                style: GoogleFonts.mulish(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: const Color.fromRGBO(33, 33, 33, 1),
                ),textAlign: TextAlign.center,
              ),
            ),
          ),

        ],
      ),
    );
  }
}
