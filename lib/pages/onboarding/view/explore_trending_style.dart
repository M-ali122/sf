// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/pages/onboarding/controller/onboarding_controller.dart';

import '../../../resources/icon/svgs.dart';

class Explore_Trending extends StatelessWidget {
  static const String route = 'Explore_Trending';

  const Explore_Trending({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    OnboardingController onboardingController = Get.put(OnboardingController());
    var theme = Get.theme;
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
            child: Container(
              height: 400,
              width: 250,
              child: Image.asset('assets/Group.png', fit: BoxFit.scaleDown,),
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
              top: 120,
              left: 0,
              right: 0,
            ),
            child: Center(
              child: Text(
                'Explore Trending Styles',
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
                'Dive into a world of inspiration! Explore trending styles, browse curated collections, and discover fashion pieces that resonate with your unique taste.',
                style: GoogleFonts.mulish(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  color: const Color.fromRGBO(33, 33, 33, 1),
                ),textAlign: TextAlign.center,
              ),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(top: 560.0),
          //   child: Center(
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         Container(
          //           width: 32,
          //           height: 8,
          //           decoration: BoxDecoration(
          //             gradient: AppColor.mainGradient,
          //             borderRadius: BorderRadius.circular(4)
          //           ),
          //         ),
          //         SizedBox(width: 5,),
          //         Container(
          //           width: 8,
          //           height: 8,
          //           decoration: BoxDecoration(
          //               color: AppColor.GreyScale200,
          //               borderRadius: BorderRadius.circular(4)
          //           ),
          //         ),
          //         SizedBox(width: 5,),
          //         Container(
          //           width: 8,
          //           height: 8,
          //           decoration: BoxDecoration(
          //               color: AppColor.GreyScale200,
          //               borderRadius: BorderRadius.circular(4)
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.only(top: 670.0),
          //   child: Center(
          //     child: CircleButton(
          //         onTap: (){
          //           Get.toNamed(OnboardSecond.route);
          //         },
          //       icon: Icons.arrow_forward,
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
