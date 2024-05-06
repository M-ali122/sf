import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sf_app/helper/extensions/spacings.dart';
import 'package:sf_app/helper/view/Appbutton.dart';
import 'package:sf_app/client_side_design/onboarding/controller/onboarding_controller.dart';
import 'package:sf_app/client_side_design/onboarding/onboardind_view.dart';
import 'package:sf_app/client_side_design/registration/controller/registration_controller.dart';
import 'package:sf_app/client_side_design/registration/view/terms_and_condition.dart';
import 'package:sf_app/resources/color/app_color.dart';
import 'package:sf_app/resources/icon/icon.dart';
import 'package:sf_app/resources/icon/svgs.dart';

class AccountType extends StatefulWidget {
  static String route = 'AccountType';
  const AccountType({super.key});

  @override
  State<AccountType> createState() => _AccountTypeState();
}

class _AccountTypeState extends State<AccountType> {
   
   final OnboardingController controller = Get.put(OnboardingController());
  
    final RegistrationController _registrationController = Get.put(RegistrationController());
 
  final theme = Get.theme;
  String selectedType = 'Customer';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              24.height,
              GestureDetector(
                onTap: () {
                  Get.toNamed(TermAndCondition.route);
                },
                child: SvgPicture.string(Appicons.backIcon),
              ),
              24.height,
              Text(
                'How will you use the app as?',
                style: theme.textTheme.headline4!.copyWith(
                  fontSize: 32.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () async{
                  setState(() => selectedType = 'Designer');
                 
                 
                },
                child: Container(
                  height: 170.h,
                  width: Get.width.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      color: AppColor.white,
                      border: selectedType == 'Designer'
                          ? Border.all(color: AppColor.secondaryColor500)
                          : null,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            offset: const Offset(0, 0),
                            spreadRadius: 0,
                            blurRadius: 16,
                            blurStyle: BlurStyle.solid),
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        16.height,
                        SvgPicture.string(
                          Svgs.desginer,
                          width: 50.w,
                          height: 50.h,
                          fit: BoxFit.cover,
                        ),
                        16.height,
                        Text(
                          'Designer',
                          style: theme.textTheme.headline6,
                        ),
                        8.height,
                        Text(
                          'Showcase your creativity and connect with fashion enthusiasts around the world.',
                          style: theme.textTheme.caption!.copyWith(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              24.height,
              GestureDetector(
                onTap: () async => setState(() => selectedType = 'Customer'),
                child: Container(
                  height: 170.h,
                  width: Get.width,
                  padding: const EdgeInsets.only(right: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      color: AppColor.white,
                      border: selectedType == 'Customer'
                          ? Border.all(color: AppColor.secondaryColor500)
                          : null,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            offset: const Offset(1, 02),
                            spreadRadius: 0,
                            blurRadius: 1,
                            blurStyle: BlurStyle.solid),
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        16.height,
                        SvgPicture.string(
                          Svgs.customer,
                          width: 50.w,
                          height: 50.h,
                          fit: BoxFit.cover,
                        ),
                        16.height,
                        Text(
                          'Customer',
                          style: theme.textTheme.headline6,
                        ),
                        8.height,
                        Text(
                          'Discovering the latest trends, supporting independent designers, and expressing your unique style',
                          style: theme.textTheme.caption!.copyWith(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Spacer(),
              AppButton(
                  title: 'Continue',
                  onTap: () {
                     controller.accountType.value = selectedType;
                    Get.toNamed(OnbaordingView.route);
                    // Get.toNamed(Explore_Trending.route);
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
