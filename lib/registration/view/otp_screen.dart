import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sf_app/registration/view/password_screen.dart';
import 'package:sf_app/resources/icon/icon.dart';

import '../../helper/view/Appbutton.dart';
import '../../helper/view/OtpCustomeConatiner.dart';
import '../../helper/view/progress_bar.dart';
import '../../helper/view/textfield.dart';

class OtpScreen extends StatelessWidget {
  static String route = 'OtpScreen';
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
     final theme = Get.theme;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            children: [
              SizedBox(height: 25.h),
              Row(
                children: [
                  SvgPicture.string(icon.backIcon),
                  const SizedBox(width: 50),
               /// Custom progress bar
                  const Expanded(
                    child: CustomeProgressBar(
                      progressValue: 0.13,
                    ),
                  ),
                  const SizedBox(width: 50),
                ],
              ),
              SizedBox(height: 30.h),
              Text(
                'Email verification needed',
                style: theme.textTheme.headline4,
              ),
             const SizedBox(height: 10,),
             Text(
                 'We have sent the OTP verification code to '
                     'your email. Check your email and enter the code below.',
               style: theme.textTheme.bodyText2,
             ),
              SizedBox(height: 20.h,),

              /// otp custom Container
              const OtpCustomConatiner(),
              const SizedBox(height: 30,),

              Center(child: Text(
                  "Didn't receive an email?",
              style: theme.textTheme.overline,)
              ),
              SizedBox(height: 10.h,),
              Center(
                  child: Text(
                "You can resend code in 55 s",
                style: theme.textTheme.overline,)
              ),

              SizedBox(height:130.h),
              /// App Button
              AppButton(
                  title: 'Continue',
                  onTap: (){
                    Get.toNamed(PasswordScreen.route);
                  }
              ),
              const SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }
}
