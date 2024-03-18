import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sf_app/helper/view/Appbutton.dart';
import 'package:sf_app/pages/onboarding/onboardind_view.dart';
import 'package:sf_app/resources/color/app_color.dart';
import 'package:sf_app/resources/icon/icon.dart';
import 'package:sf_app/resources/icon/svgs.dart';

class AccountType extends StatelessWidget {
  static String route = 'AccountType';
  const AccountType({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Get.theme;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 25,
              ),
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: SvgPicture.string(Appicons.backIcon),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'How will you use the app as?',
                style: theme.textTheme.headline4,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 170,
                width: Get.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: AppColor.white,
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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // SizedBox(height: 10,),
                      SvgPicture.string(
                        Svgs.desginer,
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        'Designer',
                        style: theme.textTheme.headline6,
                      ),
                      Text(
                        'Showcase your creativity and connect with fashion enthusiasts around the world.',
                        style: theme.textTheme.caption,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 170,
                width: Get.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: AppColor.white,
                    border: Border.all(color: AppColor.secondaryColor500),
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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // SizedBox(height: 10,),
                      SvgPicture.string(
                        Svgs.customer,
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        'Customer',
                        style: theme.textTheme.headline6,
                      ),
                      Text(
                        'Discovering the latest trends, supporting independent designers, and expressing your unique style',
                        style: theme.textTheme.caption,
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              AppButton(
                  title: 'Continue',
                  onTap: () {
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
