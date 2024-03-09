// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class Splash_View extends GetWidget{
//   static String route = 'Splash_View';
//
//   Widget build(BuildContext context){
//     return Scaffold(
//       body: Column(
//         children: [
//           Center(
//             child: Text('Hello'),
//           )
//         ],
//       ),
//     );
//
//   }
//
// }

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../resources/icon/svgs.dart';
import '../controller/controller.dart';



class Splash_View extends GetWidget<SplashController> {
  static const String route = 'Splash_View';


  const Splash_View({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: SplashController(),
      builder: (controller) {
        return Scaffold(
          body: Stack(
            children: [
              Positioned(
                left: 200,
                top: -60,
                child: Container(
                  height: 197,
                  width: 197,
                  decoration: const ShapeDecoration(
                    shape: CircleBorder(
                      side: BorderSide(
                          color: Color(0xffC9B372)
                      )
                    ),
                  ),
                ),
              ),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 16.0),
                 child: Center(child: Image.asset('assets/splashlogo.png')),
               ),
              Positioned(
                right: 200,
                top: 380,
                bottom: 5,
                child: Container(
                  height: 334,
                  width: 334,
                  decoration: const ShapeDecoration(
                    shape: CircleBorder(
                        side: BorderSide(
                            color: Color(0xffC9B372)
                        )
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 480.0),
                child: SpinKitCircle(
                  color: Color(0xff72975E),
                  size: 50.0,
                  // controller: AnimatedController,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

