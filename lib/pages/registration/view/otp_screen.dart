import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sf_app/pages/registration/view/password_screen.dart';
import 'package:sf_app/resources/icon/icon.dart';

import '../../../helper/view/Appbutton.dart';
import '../../../helper/view/OtpCustomeConatiner.dart';
import '../../../helper/view/progress_bar.dart';

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
            child: SingleChildScrollView(
              child: SizedBox(
                width: Get.width,
                height: Get.height,
                child: Column(
                  children: [
                    SizedBox(height: 25.h),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: SvgPicture.string(Appicons.backIcon),
                        ),
                        const SizedBox(width: 50),

                        /// Custom progress bar
                        const Expanded(
                          child: CustomeProgressBar(
                            progressValue: 0.17,
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
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'We have sent the OTP verification code to '
                      'your email. Check your email and enter the code below.',
                      style: theme.textTheme.bodyText2,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),

                    /// otp custom Container
                    const OtpCustomConatiner(),
                    const SizedBox(
                      height: 30,
                    ),

                    const Center(
                        child: Text(
                      "Didn't receive an email?",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(33, 33, 33, 1),
                      ),
                    )),
                    SizedBox(
                      height: 10.h,
                    ),
                    Center(
                      child: RichText(
                        text: TextSpan(
                          style: theme.textTheme.overline,
                          children: const [
                            TextSpan(
                                text: "You can resend code in ",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(33, 33, 33, 1),
                                )),
                            TextSpan(
                              text: "55",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(71, 87, 54, 1),
                              ), // Set the color to green
                            ),
                            TextSpan(text: " s")
                          ],
                        ),
                      ),
                    ),

                    const Spacer(),

                    /// App Button
                    AppButton(
                        title: 'Continue',
                        onTap: () {
                          Get.toNamed(PasswordScreen.route);
                        }),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
