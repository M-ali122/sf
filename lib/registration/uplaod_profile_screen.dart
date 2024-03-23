import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sf_app/registration/controller/passController.dart';
import 'package:sf_app/resources/color/app_color.dart';
import 'package:sf_app/resources/icon/icon.dart';

import '../helper/view/Appbutton.dart';
import '../helper/view/progress_bar.dart';
import '../pages/screens/terms_and_condition.dart';
import '../resources/icon/svgs.dart';

class UploadProfileView extends StatelessWidget {
  static String route = 'UploadProfileView';
  const UploadProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Get.theme;

    PasswordStrengthController controller =
        Get.put(PasswordStrengthController());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
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
                      progressValue: 0.8,
                    ),
                  ),
                  const SizedBox(width: 50),
                ],
              ),
              SizedBox(height: 30.h),
              const Text(
                'Upload your profile picture & your brand logo',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 32,
                  color: Color.fromRGBO(33, 33, 33, 1),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),

              Container(
                height: 101,
                width: Get.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: AppColor.GreyScale50,
                    border: Border.all(
                        width: 3, color: const Color.fromRGBO(201, 179, 114, 1))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.string(
                      Svgs.galleryIcon,
                      color: AppColor.GreyScale500,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Profile Picture',
                      style: theme.textTheme.subtitle1,
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 20,
              ),
              Container(
                height: 101,
                width: Get.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: AppColor.GreyScale50,
                    border: Border.all(
                        width: 3, color: const Color.fromRGBO(201, 179, 114, 1))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.string(
                      Svgs.galleryIcon,
                      color: AppColor.GreyScale500,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Brand Logo',
                      style: theme.textTheme.subtitle1,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Expanded(
                    child: Divider(
                      height: 1,
                      color: AppColor.GreyScale200,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'or',
                    style: theme.textTheme.bodyText2,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Expanded(
                      child: Divider(
                    height: 1,
                    color: AppColor.GreyScale200,
                  )),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  controller.getImage(ImageSource.camera);
                },
                child: Container(
                  height: 58,
                  width: Get.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: AppColor.backGroundSilver),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.string(Appicons.camera),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        'Open Camera & Take Photo',
                        style: theme.textTheme.bodyText1,
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: Get.height * 0.3),

              /// App Button
              AppButton(
                  title: 'Continue',
                  onTap: () {
                    Get.toNamed(TermAndCondition.route);
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
