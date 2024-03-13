import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sf_app/helper/view/circleButton.dart';
import 'package:sf_app/resources/color/app_color.dart';

import '../../../resources/icon/svgs.dart';
import 'onboard_second_screen.dart';

class Explore_Trending extends StatelessWidget {
  static const String route = 'Explore_Trending';

  const Explore_Trending({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Get.theme;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: Get.width * 0.74,
            top: -10,
            child: SvgPicture.string(Svgs.appbarCircle),
          ),
          Positioned(
            top: 60,
            left: Get.width * 0.84,
            child: const Text('Skip'),
          ),
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
            top: 220,
            // left: 0,
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
                'Explore Trending Styles',
                style: theme.textTheme.headline4,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 400,
              left: 16,
              right: 16
            ),
            child: Center(
              child: Text(
                'Dive into a world of'
                    ' inspiration! Explore trending styles, '
                    'browse curated collections, and discover'
                    ' fashion pieces that resonate with your unique taste.',
                style: theme.textTheme.overline,
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(
              top: Get.height* 0.65
              ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
            padding: EdgeInsets.only(
              top: Get.height* 0.78
              ),
            child: Center(
              child: CircleButton(
                  onTap: (){
                    Get.toNamed(OnboardSecond.route);
                  },
                icon: Icons.arrow_forward,
              ),
            ),
          )
        ],
      ),
    );
  }
}
