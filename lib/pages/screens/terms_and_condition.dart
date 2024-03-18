import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sf_app/helper/view/Appbutton.dart';
import 'package:sf_app/pages/onboarding/view/account_type.dart';
import 'package:sf_app/resources/color/app_color.dart';
import 'package:sf_app/resources/icon/icon.dart';

import '../../helper/view/progress_bar.dart';
import '../../modules/global/controllers/checkboxController.dart';


class TermAndCondition extends StatelessWidget {
  static String route = 'TermAndCondition';
 TermAndCondition({super.key});

  final CheckboxController checkboxController = Get.put(CheckboxController());
  @override
  Widget build(BuildContext context) {
    final theme = Get.theme;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
                    child: CustomeProgressBar(
                      progressValue: 1.0,
                    ),
                  ),
                  const SizedBox(width: 50),
                ],
              ),
              const SizedBox(height: 30,),
              Text('Terms and Conditions',
                style: theme.textTheme.headline4,
              ),
              const SizedBox(height: 30,),
              Row(
                children: [


                  Obx(
                        () => Checkbox(
                          visualDensity: VisualDensity.compact,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          fillColor: checkboxController.isPrivacyChecked.value ? MaterialStateProperty.all(
                            const Color(0xff72975E),
                          ) : MaterialStateProperty.all<Color>(

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
                      style: theme.textTheme.headline2,
                      children: const <TextSpan>[
                        TextSpan(text: 'I agree to the '),
                        TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(color: AppColor.secondaryColor500)
                        ),
                        TextSpan(text: ' of\n Fashin Hub Saudi'),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              const Divider(),
              const SizedBox(height: 10,),
              Row(
                children: [
                  Obx(
                        () => Checkbox(
                      visualDensity: VisualDensity.compact,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      fillColor: checkboxController.isTermsChecked.value ? MaterialStateProperty.all(
                        const Color(0xff72975E),
                      ) : MaterialStateProperty.all<Color>(

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
                      style: theme.textTheme.headline2,
                      children: const <TextSpan>[
                        TextSpan(text: 'I have read, understood and agree\nto be bound by all '),
                        TextSpan(
                            text: 'Legal Terms,\n',
                            style: TextStyle(color: AppColor.secondaryColor500)
                        ),
                        TextSpan(text: 'applicable to me,'),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              const Padding(
                padding: EdgeInsets.only(left: 22.0,right: 10),
                child: Text('By checking the box, you agree to our terms and conditions'),
              ),
              const Spacer(),
              // const SizedBox(height: 140,),
              AppButton(title: 'Continue', onTap: (){
                // showDialog(
                //   builder: (context) {
                //     return AlertDialog(
                //       shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(64.0),
                //       ),
                //       backgroundColor: AppColor.white,
                //       icon: SvgPicture.string(Svgs.RegistrationCompleted),
                //       title: Text('Registration Completed',style: TextStyle(
                //           fontSize: 22,
                //           fontWeight: FontWeight.w700,
                //           fontFamily: "Mulish",
                //           color: Color.fromRGBO(33, 33, 33, 1),
                //     ),
                //       ),
                //       actions: [
                //         const Text('You will be redirected to the choice page in a moment',textAlign: TextAlign.center,style: TextStyle(
                //           fontSize: 14,
                //           fontWeight: FontWeight.w400,
                //           fontFamily: "Mulish",
                //           color: Color.fromRGBO(33, 33, 33, 1),
                //         ),),
                //         const SizedBox(height: 25,),
                //         const SpinKitCircle(
                //           color: Color(0xff72975E),
                //           size: 50.0,
                //           // controller: AnimatedController,
                //         ),
                //       ],
                //     );
                //   },
                //   context: context
                // );

                // Timer.periodic(Duration(seconds: 2), (timer) {
                  Get.offAllNamed(AccountType.route);
                // });
                // Get.toNamed(AccountType.route);
              }),
              const SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }
}
