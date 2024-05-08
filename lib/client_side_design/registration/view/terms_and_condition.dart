import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sf_app/helper/extensions/spacings.dart';
import 'package:sf_app/helper/view/Appbutton.dart';
import 'package:sf_app/client_side_design/registration/controller/registration_controller.dart';
import 'package:sf_app/resources/color/app_color.dart';

import '../../../modules/global/controllers/checkboxController.dart';

class TermAndCondition extends GetWidget<RegistrationController> {
  static String route = 'TermAndCondition';
  TermAndCondition({super.key});

  final CheckboxController checkboxController = Get.put(CheckboxController());
  @override
  Widget build(BuildContext context) {
    final theme = Get.theme;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Terms and Conditions',
                style: theme.textTheme.headlineMedium,
              ),
              24.height,
              Row(
                children: [
                  Obx(
                    () => Checkbox(
                      visualDensity: VisualDensity.compact,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      fillColor: checkboxController.isPrivacyChecked.value
                          ? MaterialStateProperty.all(
                              AppColor.primaryColor500,
                            )
                          : MaterialStateProperty.all<Color>(
                              const Color(0xffFFFFFF),
                            ),
                      value: checkboxController.isPrivacyChecked.value,
                      // side: const BorderSide(style: BorderStyle.none),
                      onChanged: (value) {
                        checkboxController.togglePrivacyCheckbox(value!);
                      },
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      style: theme.textTheme.displayMedium,
                      children: <TextSpan>[
                        TextSpan(
                            text: 'I agree to the ',
                            style: TextStyle(
                                fontSize: 18.sp, fontWeight: FontWeight.w600)),
                        TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(
                              color: AppColor.secondaryColor500,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600),
                        ),
                        TextSpan(
                            text: ' of\n Fashin Hub Saudi',
                            style: TextStyle(
                                fontSize: 18.sp, fontWeight: FontWeight.w600)),
                      ],
                    ),
                  ),
                ],
              ),
              24.height,
              const Divider(),
              24.height,
              Row(
                children: [
                  Obx(
                    () => Checkbox(
                      visualDensity: VisualDensity.compact,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      fillColor: checkboxController.isTermsChecked.value
                          ? MaterialStateProperty.all(
                              AppColor.primaryColor500,
                            )
                          : MaterialStateProperty.all<Color>(
                              const Color(0xffFFFFFF),
                            ),
                      value: checkboxController.isTermsChecked.value,
                      // side: const BorderSide(style: BorderStyle.none),
                      onChanged: (value) {
                        checkboxController.toggleTermsCheckbox(value!);
                      },
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      style: theme.textTheme.displayMedium,
                      children: const <TextSpan>[
                        TextSpan(
                            text:
                                'I have read, understood and agree\nto be bound by all '),
                        TextSpan(
                            text: 'Legal Terms,\n',
                            style:
                                TextStyle(color: AppColor.secondaryColor500)),
                        TextSpan(text: 'applicable to me,'),
                      ],
                    ),
                  ),
                ],
              ),
              24.height,
              Padding(
                padding: EdgeInsets.only(left: 22.0.w, right: 10.w),
                child: Text(
                  'By checking the box, you agree to our terms and conditions',
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                ),
              ),
              const Spacer(),
              // const SizedBox(height: 140,),
              AppButton(
                  title: 'Continue',
                  onTap: () {
                    // Get.toNamed(AccountType.route);
                    controller.completeRegistration();
                  }),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
