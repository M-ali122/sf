import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sf_app/helper/view/circleButton.dart';
import 'package:sf_app/pages/navbar/view/navbar_view.dart';
import 'package:sf_app/resources/color/app_color.dart';

import '../../../../resources/icon/svgs.dart';

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
              child: SizedBox(
              height: 400,
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
                // ignore: deprecated_member_use
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
                // ignore: deprecated_member_use
                style: theme.textTheme.overline,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: Get.height* 0.65),
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
                const  SizedBox(width: 5,),
                  Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                        color: AppColor.GreyScale200,
                        borderRadius: BorderRadius.circular(4)
                    ),
                  ),
                  const SizedBox(width: 5,),
                  Container(
                    width: 32,
                    height: 8,
                    decoration: BoxDecoration(
                        gradient: AppColor.mainGradient,
                        borderRadius: BorderRadius.circular(4)
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: Get.height* 0.88,
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
                const SizedBox(width: 10,),
                CircleButton(
                  onTap: (){
                    Get.offAllNamed(BottomnavBar.route);
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
