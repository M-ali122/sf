import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

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
              Positioned(
                left: 220,
                top: -60,
                child: Container(
                  height: 197,
                  width: 197,
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
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Center(child: Image.asset('assets/splashlogo.png')),
              ),

              Positioned(
                left: -175,
                bottom: -5,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 250,
                    width: 334,
                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / 2 + 80),
                    // width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    decoration: const ShapeDecoration(
                      shape: CircleBorder(
                        side: BorderSide(
                          color: Color(0xffC9B372),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 50,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.only(top: 480.0),
                  child: SpinKitCircle(
                    color: Color(0xff72975E),
                    size: 50.0,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
