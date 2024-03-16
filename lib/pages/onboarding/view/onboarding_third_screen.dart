
// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';
// // import 'package:flutter/widgets.dart';
// // import 'package:flutter_spinkit/flutter_spinkit.dart';
// // import 'package:flutter_svg/flutter_svg.dart';
// // import 'package:get/get.dart';
// //
// // import '../../../resources/icon/svgs.dart';
// //
// // class Explore_Trending extends StatelessWidget {
// //   static const String route = 'Explore_Trending';
// //
// //   const Explore_Trending({Key? key}) : super(key: key);
// //
// //   @override
// //   Widget build(BuildContext context) {
// //
// //     var theme = Get.theme;
// //
// //     return Scaffold(
// //       body: Stack(
// //         children: [
// //           Positioned(
// //               left: 280,
// //               top: -10,
// //               child: SvgPicture.string(Svgs.appbarCircle)),
// //           const Positioned(
// //               top: 60,
// //               left: 310,
// //               child: Text('Skip')),
// //           Positioned(
// //               top: 50,
// //               left: 50,
// //               child: Image.asset('assets/Group.png'),
// //           ),
// //           Positioned(
// //               top: 400,
// //               left: -42,
// //               child: SvgPicture.string(Svgs.halfCircleDown),
// //           ),
// //           Positioned(
// //             top: 650,
// //             child: Text('Explore Trending Styles',
// //             style: theme.textTheme.headline4,
// //             ),
// //           )
// //         ],
// //       ),
// //     );
// //   }
// // }
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';
//
// import '../../../resources/icon/svgs.dart';
//
// class Explore_Trending extends StatelessWidget {
//   static const String route = 'Explore_Trending';
//
//   const Explore_Trending({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//
//     var theme = Get.theme;
//
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Stack(
//           children: [
//             Positioned(
//                 left: 260,
//                 top: -10,
//                 child: SvgPicture.string(Svgs.appbarCircle)),
//             const Positioned(
//                 top: 60,
//                 left: 300,
//                 child: Text('Skip')),
//             Positioned(
//               top: 50,
//               left: 50,
//               child: Container(
//                   height: 330,
//                   width: 250,
//                   child: Image.asset('assets/Group.png',fit: BoxFit.scaleDown,),),
//             ),
//             Positioned(
//               top: 220,
//               left: -20,
//               child: SvgPicture.string(Svgs.halfCircleDown),
//             ),
//             Positioned(
//               top: 400,
//               left: 16,
//               right: 16,
//               child: Text('Explore Trending Styles',
//                 style: theme.textTheme.headline4,
//               ),
//             ),
//             Positioned(
//               top: 490,
//               left: 16,
//               right: 16,
//               child: Align(
//                 alignment: Alignment.center,
//                 child: Text('Dive into a world of'
//                     ' inspiration! Explore trending styles, '
//                     'browse curated collections, and discover'
//                     ' fashion pieces that resonate with your unique taste.',
//                   style: theme.textTheme.overline,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../resources/icon/svgs.dart';
import '../controller/onboarding_controller.dart';


class OnboardThird extends StatelessWidget {
  static const String route = 'OnboardThird';

  const OnboardThird({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Get.theme;

    OnboardingController onboardingController = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: Get.width * 0.76,
            top: -10,
            child: SvgPicture.string(Svgs.appbarCircle),
          ),
          // Positioned(
          //   top: 78,
          //   left: 300,
          //   child: Container(
          //     width: 35, // Adjust the width of the underline as needed
          //     height: 1.5, // Adjust the height of the underline as needed
          //     color: Colors.black, // Adjust the color of the underline as needed
          //   ),
          // ),
          Positioned(
              top: 60,
              left: Get.width * 0.86,
              child: GestureDetector(
                onTap: (){
                  onboardingController.pagecontrol.jumpToPage(2);
                },
                child: Text('Skip',style: GoogleFonts.mulish(
                    color: Color.fromRGBO(71, 87, 54, 1),
                    fontSize:16,
                    fontWeight: FontWeight.w700,
                    decoration: TextDecoration.underline

                )),
              )),

          Positioned(
            top: 50,
            left: Get.width * 0.2,
            child: Container(
              height: 400,
              width: 250,
              child: Image.asset('assets/onboarding3.png', fit: BoxFit.scaleDown,),
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
            padding: EdgeInsets.only(
              top: Get.height * 0.15,
              left: 0,
              right: 0,

            ),
            child: Center(
              child: Text(
                'Shop with Confidence',

                style: theme.textTheme.headline4,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: Get.height * 0.61,
                left: 0,
                right: 0
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
               "Ready to elevate your wardrobe? Shop confidently "
                   "from a diverse range of brands, designers, and "
                   "styles. Enjoy secure transactions, easy returns, and deals !",

                  style: GoogleFonts.mulish(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Color.fromRGBO(33, 33, 33, 1),
                  ),textAlign: TextAlign.center,
              ),
            ),
          ),

        ],  
      ),
    );
  }
}
