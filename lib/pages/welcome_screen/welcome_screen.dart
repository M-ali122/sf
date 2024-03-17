import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sf_app/helper/view/Appbutton.dart';
import 'package:sf_app/resources/color/app_color.dart';

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
              top: 58,
              left: 24,
              child: Container(
                width: 85,
                height: 37,
                decoration: BoxDecoration(
                  color:  const Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.circular(100),
                ),
                
                child: Image.asset('assets/s1.png'),
              )),
          Positioned(
            top: 70,
            child: Container(
              height: 500,
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
                      Colors.white,
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
                      const SizedBox(height: 60,),
                      Text(
                        'Connecting Threads, Creating Style.',
                        style: theme.textTheme.headline4,
                      ),
                      const SizedBox(height: 15,),
                      const Text(
                        'Welcome to the only fashion app you will ever need!',style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Mulish",
                        color: Color.fromRGBO(33, 33, 33, 1),
                      ),
                      ),
                      const SizedBox(height: 20,),
                      AppButton(
                          title: 'Sign Up',
                          onTap: (){
                            Get.toNamed(RegistrationForm.route);
                          }
                      ),
                      const SizedBox(height: 10,),
                      AppButton(
                          gradient: AppColor.buttonGredient,
                          foreground: AppColor.black,
                          title: 'Log In',
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
