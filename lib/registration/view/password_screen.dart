import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:password_strength_checker/password_strength_checker.dart';
import 'package:password_strength_indicator_plus/password_strength_indicator_plus.dart';
import 'package:sf_app/resources/color/app_color.dart';
import 'package:sf_app/resources/icon/icon.dart';
import 'package:password_strength_indicator/password_strength_indicator.dart';

import '../../helper/view/Appbutton.dart';
import '../../helper/view/OtpCustomeConatiner.dart';
import '../../helper/view/progress_bar.dart';
import '../../helper/view/textfield.dart';
import '../controller/passController.dart';
import '../uplaod_profile_screen.dart';

class PasswordScreen extends StatelessWidget {
  static String route = 'PasswordScreen';
  const PasswordScreen({super.key});

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
                      progressValue: 0.5,
                    ),
                  ),
                  const SizedBox(width: 50),
                ],
              ),
              SizedBox(height: 30.h),
              Text(
                'Create your account password',
                style: theme.textTheme.headline4,
              ),
             SizedBox(height: 20.h,),

              /// otp custom Container
              CustomTextField(
                heading: 'Password',
                title: 'Password',
                isVisible: true,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Row(
                  children: [
                    Container(
                      height: 4,
                      width: 58,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: AppColor.primaryColor300,
                      ),
                    ),
                    SizedBox(width: 5.w,),
                    Container(
                      height: 4,
                      width: 58,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: AppColor.primaryColor300,
                      ),
                    ),
                    SizedBox(width: 5.w,),
                    Container(
                      height: 4,
                      width: 58,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: AppColor.primaryColor300,
                      ),
                    ),
                    SizedBox(width: 5.w,),
                    Container(
                      height: 4,
                      width: 58,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: AppColor.primaryColor300,
                      ),
                    ),
                    SizedBox(width: 10.w,),
                    Text(
                        'Strong',
                      style: theme.textTheme.subtitle2,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              CustomTextField(
                heading: 'Confirm your password',
                title: 'Write Here',
              ),

              SizedBox(height:130.h),
              /// App Button
              AppButton(
                  title: 'Continue',
                  onTap: (){
                    Get.toNamed(UploadProfileView.route);
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
