import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:password_strength_checker/password_strength_checker.dart';
import 'package:sf_app/helper/view/custome_textfield.dart';
import 'package:sf_app/client_side_design/registration/controller/registration_controller.dart';
import 'package:sf_app/helper/view/loading.dart';
import 'package:sf_app/resources/color/app_color.dart';

import '../../../helper/view/Appbutton.dart';

import '../controller/passController.dart';

class PasswordScreen extends GetWidget<RegistrationController> {
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
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: ListView(
              shrinkWrap: true,
              children: [
                Text(
                  'Create your account password',
                  style: theme.textTheme.headlineMedium,
                ),
                SizedBox(
                  height: 30.h,
                ),

                /// otp custom Container
                CustomTextField(
                  heading: 'Password',
                  controller: passwordStrengthController.passwordController,
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
                        SizedBox(
                          height: 4,
                          width: Get.width * .6,
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
                            passwordStrengthController.passwordStrength.value,
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
             CustomTextField(
                  controller: passwordStrengthController.confirmPasswordController,
                  heading: 'Confirm your password',
                  title: 'Write Here',
                ),
              ],
            )),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(24),
        child: controller.isBusy.isTrue? Loading(): AppButton(
          title: 'Continue',
          onTap: () async {
            print(passwordStrengthController.passwordController);
            print(passwordStrengthController.confirmPasswordController);
            controller.setupPassword(passwordStrengthController.passwordController.text);
          },
        ),
      ),
    );
  }
}
