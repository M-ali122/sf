import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sf_app/pages/registration/controller/passController.dart';
import 'package:sf_app/resources/color/app_color.dart';
import 'package:sf_app/resources/icon/icon.dart';

import '../../helper/view/Appbutton.dart';
import '../../helper/view/progress_bar.dart';
import '../../helper/view/custome_textfield.dart';

class PasswordScreen extends StatelessWidget {
  static String route = 'PasswordScreen';
  const PasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Get.theme;
    PasswordStrengthController passwordStrengthController =
        Get.put(PasswordStrengthController());

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
                            child: SvgPicture.string(Appicons.backIcon)),
                        const SizedBox(width: 50),

                        /// Custom progress bar
                        const Expanded(
                          child: CustomeProgressBar(),
                        ),
                        const SizedBox(width: 50),
                      ],
                    ),
                    SizedBox(height: 30.h),
                    Text(
                      'Create your account password',
                      style: theme.textTheme.headline4,
                    ),
                    SizedBox(
                      height: 30.h,
                    ),

                    /// otp custom Container
                    CustomTextField(
                      heading: 'Password',
                      title: 'Password',
                      isVisible: true,
                      onChange: (val) {
                        passwordStrengthController.checkPasswordStrength(val);
                      },
                    ),

                    SizedBox(
                      height: 10.h,
                    ),
                    Obx(
                      () => Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Row(
                          children: [
                            Container(
                              height: 4,
                              child: ListView.separated(
                                separatorBuilder: (context, index) {
                                  return SizedBox(
                                    width: 5.w,
                                  );
                                },
                                itemCount: passwordStrengthController
                                            .passwordStrength.value ==
                                        "Weak"
                                    ? 1
                                    : passwordStrengthController
                                                .passwordStrength.value ==
                                            "Moderate"
                                        ? 2
                                        : passwordStrengthController
                                                    .passwordStrength.value ==
                                                "Strong"
                                            ? 4
                                            : 0,
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return Container(
                                    height: 4,
                                    width: 58,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(2),
                                      color: AppColor.primaryColor300,
                                    ),
                                  );
                                },
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Obx(
                              () => Text(
                                '${passwordStrengthController.passwordStrength.value}',
                                style: theme.textTheme.subtitle2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const CustomTextField(
                      heading: 'Confirm your password',
                      title: 'Write Here',
                    ),
                    Spacer(),

                    /// App Button
                    AppButton(
                        title: 'Continue',
                        onTap: () {
                          Get.toNamed(UploadProfileView.route);
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
