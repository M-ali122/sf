import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sf_app/auth/Login%20view/view/login_screen.dart';
import 'package:sf_app/helper/extensions/spacings.dart';
import 'package:sf_app/helper/view/Appbutton.dart';
import 'package:sf_app/client_side_design/auth/screens/login.dart';
import 'package:sf_app/client_side_design/registration/screens/registration_screen.dart';
import 'package:sf_app/resources/color/app_color.dart';

class WelcomeView extends StatelessWidget {
  static String route = 'WelcomeView';
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Get.theme;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/welcomePage.png',
            fit: BoxFit.contain,
          ),
          Positioned(
            top: 100.h,
            child: Image.asset('assets/Rectangle.png'),
          ),
          //Logo badge
          Positioned(
              top: 74.h,
              left: 24.w,
              child: Container(
                width: 85.w,
                height: 37.h,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Image.asset('assets/s1.png'),
              )),
          Positioned(
            top: 70.h,
            child: Container(
              height: 500.h,
              width: Get.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Colors.white10.withOpacity(0.0),
                    Colors.white38,
                    Colors.white70.withOpacity(0.1),
                    Colors.white.withOpacity(0.2),
                    Colors.white,
                    Colors.white,
                  ])),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 420.h,
              color: Colors.white,
              width: Get.width,
              padding: const EdgeInsets.only(
                  left: 24, right: 24, top: 32, bottom: 36),
              child: Column(
                children: [
                  Text(
                    'Connecting Threads, Creating Style.',
                    style: theme.textTheme.headlineMedium,
                  ),
                   SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    'Welcome to the only fashion app you will ever need!',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff212121),
                    ),
                  ),
                  24.height,
                  AppButton(
                      title: 'Sign Up',
                      onTap: () {
                        Get.toNamed(RegistrationScreen.route);
                      }),
                  16.height,
                  AppButton(
                    gradient: AppColor.buttonGredient,
                    foreground: AppColor.black,
                    title: 'Log In',
                    onTap: () async {
                      Get.toNamed(LoginScreenn.route);
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
