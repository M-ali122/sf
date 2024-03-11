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
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sf_app/helper/view/circleButton.dart';
import 'package:sf_app/pages/home/view/home_view.dart';
import 'package:sf_app/resources/color/app_color.dart';

import '../../../resources/icon/svgs.dart';

class OnboardThird extends StatelessWidget {
  static const String route = 'OnboardThird';

  const OnboardThird({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Get.theme;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 260,
            top: -10,
            child: SvgPicture.string(Svgs.appbarCircle),
          ),
          const Positioned(
            top: 60,
            left: 300,
            child: Text('Skip'),
          ),
          Positioned(
            top: 50,
            left: 50,
            child: Container(
              height: 330,
              width: 250,
              child: Image.asset('assets/onboarding3.png', fit: BoxFit.scaleDown,),
            ),
          ),
          Positioned(
            top: 220,
            left: -20,
            child: SvgPicture.string(Svgs.halfCircleDown),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 170,
              left: 16,
              right: 16,
            ),
            child: Center(
              child: Text(
                'Shop with Confidence',
                style: theme.textTheme.headline4,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 380,
                left: 22,
                right: 16
            ),
            child: Center(
              child: Text(
               "Ready to elevate your wardrobe? Shop confidently "
                   "from a diverse range of brands, designers, and "
                   "styles. Enjoy secure transactions, easy returns, and deals !",
                style: theme.textTheme.overline,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 560.0),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                        color: AppColor.GreyScale200,
                        borderRadius: BorderRadius.circular(4)
                    ),
                  ),
                  SizedBox(width: 5,),
                  Container(
                    width: 32,
                    height: 8,
                    decoration: BoxDecoration(
                        gradient: AppColor.mainGradient,
                        borderRadius: BorderRadius.circular(4)
                    ),
                  ),
                  SizedBox(width: 5,),
                  Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                        color: AppColor.GreyScale200,
                        borderRadius: BorderRadius.circular(4)
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 670.0,
                right: 16,
                left: 16
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleButton(
                  onTap: (){
                    Get.back();
                  },
                  gradient: AppColor.circleButtonGradient,
                  icon: Icons.arrow_back,
                ),
                SizedBox(width: 10,),
                CircleButton(
                  onTap: (){
                    Get.offAllNamed(HomeView.route);
                  },
                  icon: Icons.arrow_forward,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
