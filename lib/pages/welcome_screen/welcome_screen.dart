import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sf_app/helper/view/Appbutton.dart';
import 'package:sf_app/resources/color/app_color.dart';
import 'package:sf_app/resources/icon/svgs.dart';

import '../../registration/view/registration_form.dart';

class WelcomeView extends StatelessWidget {
  static String route = 'WelcomeView';
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Get.theme;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/welcomePage.png'),
          Positioned(
              top: 100,
              child: Image.asset('assets/Rectangle.png'),
          ),
          Positioned(
            top: 200,
            child: Container(
              height: 600,
              width: Get.width,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      // AppColor.white54,
                      // AppColor.white,
                      // AppColor.white,
                      // AppColor.white.withOpacity(0.4),
                      Colors.white12,
                      Colors.white54,
                      Colors.white,
                      Colors.white,
                      Colors.white
                    ]
                )
              ),
            ),),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: 340,
                width: Get.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      SizedBox(height: 40,),
                      Text(
                        'Connecting Threads, Creating Style.',
                        style: theme.textTheme.headline4,
                      ),
                      SizedBox(height: 10,),
                      Text(
                        'Welcome to the only fashion app you will ever need!',
                      ),
                      SizedBox(height: 20,),
                      AppButton(
                          title: 'sign up',
                          onTap: (){
                            Get.toNamed(RegistrationForm.route);
                          }
                      ),
                      SizedBox(height: 10,),
                      AppButton(
                          gradient: AppColor.buttonGredient,
                          foreground: AppColor.black,
                          title: 'login',
                          onTap: (){
                          }
                      ),
                    ],
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
