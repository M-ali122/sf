import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sf_app/helper/extensions/spacings.dart';
import 'package:sf_app/client_side_design/registration/controller/registration_controller.dart';
import 'package:sf_app/helper/view/loading.dart';

import '../../../helper/view/Appbutton.dart';
import '../../../helper/view/OtpCustomeConatiner.dart';

class OtpScreen extends GetWidget<RegistrationController> {
  static String route = 'OtpScreen';
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Get.theme;
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) => controller.startTimer(),
    );
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView(
          shrinkWrap: true,
          children: [
            Text(
              'Email verification needed',
              style: theme.textTheme.headlineMedium,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'We have sent the OTP verification code to '
              'your email. Check your email and enter the code below.',
              style: theme.textTheme.bodyMedium!.copyWith(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff424242)),
            ),
            24.height,

            /// otp custom Container
           OtpCustomConatiner(

              onChange: (v)async{
                
                controller.otp = v;
                
              },
            ),
            const SizedBox(
              height: 30,
            ),

            const Center(
                child: Text(
              "Didn't receive an email?",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            )),
            24.height,
            Center(
                child: Obx(
              () => RichText(
                text: TextSpan(
                  style: theme.textTheme.labelSmall,
                  children: [
                    TextSpan(
                        text: "You can resend code in ",
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                        )),
                    TextSpan(
                      text: "${controller.resentOtpTimer.value} s",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                      ), // Set the color to green
                    ),
                  ],
                ),
              ),
            )),

  //           TextButton(onPressed: (){
  // print('kjbkjkj');
  //          print(controller.otp);
  //           }, child: Text("check button"))
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(24),
        child: controller.isBusy.isTrue? Loading(): AppButton(
          title: 'Continue',
          onTap: () async {
            controller.verifyOtp();
          },
        ),
      ),
    );
  }
}
