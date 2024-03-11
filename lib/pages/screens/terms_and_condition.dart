import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sf_app/helper/view/Appbutton.dart';
import 'package:sf_app/pages/onboarding/view/account_type.dart';
import 'package:sf_app/resources/color/app_color.dart';
import 'package:sf_app/resources/icon/icon.dart';
import 'package:sf_app/resources/icon/svgs.dart';

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
                      child: SvgPicture.string(icon.backIcon)),
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
                  // Obx(
                  //       () => Checkbox(
                  //         fillColor: MaterialStatePropertyAll(Color(0xff72975E),),
                  //     value: checkboxController.isChecked.value,
                  //     side: BorderSide(style: BorderStyle.none),
                  //     onChanged: (value) {
                  //       checkboxController.toggleCheckbox(value!);
                  //     },
                  //   ),
                  // ),

                  Obx(
                        () => Checkbox(
                          visualDensity: VisualDensity.compact,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                      fillColor: MaterialStateProperty.all<Color>(
                        const Color(0xff72975E),
                      ),
                      value: checkboxController.isChecked.value,
                      side: const BorderSide(style: BorderStyle.none),
                      onChanged: (value) {
                        checkboxController.toggleCheckbox(value!);
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
                      fillColor: MaterialStateProperty.all<Color>(
                        const Color(0xff72975E),
                      ),
                      value: checkboxController.isChecked.value,
                      side: const BorderSide(style: BorderStyle.none),
                      onChanged: (value) {
                        checkboxController.toggleCheckbox(value!);
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
              Spacer(),
              // const SizedBox(height: 140,),
              AppButton(title: 'continue', onTap: (){
                // showDialog(
                //   builder: (context) {
                //     return AlertDialog(
                //       backgroundColor: AppColor.white,
                //       icon: SvgPicture.string(Svgs.RegistrationCompleted),
                //       title: Text('Registration Completed',
                //       style: theme.textTheme.headline1,
                //       ),
                //       actions: [
                //         Text('You will be redirected to the choice page in a moment '),
                //         SizedBox(height: 10,),
                //         SpinKitCircle(
                //           color: Color(0xff72975E),
                //           size: 50.0,
                //           // controller: AnimatedController,
                //         ),
                //       ],
                //     );
                //   },
                //   context: context
                // );
                Get.toNamed(AccountType.route);
              }),
              SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }
}
