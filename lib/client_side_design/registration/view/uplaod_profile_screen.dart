import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sf_app/helper/extensions/spacings.dart';
import 'package:sf_app/client_side_design/registration/controller/registration_controller.dart';
import 'package:sf_app/resources/color/app_color.dart';
import 'package:sf_app/resources/icon/icon.dart';

import '../../../helper/view/Appbutton.dart';
import '../../../resources/icon/svgs.dart';

class UploadProfileView extends GetWidget<RegistrationController> {
  static String route = 'UploadProfileView';
  const UploadProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Get.theme;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: ListView(
            children: [
              Text(
                'Upload your profile picture & your brand logo',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 32.sp,
                  color: const Color.fromRGBO(33, 33, 33, 1),
                ),
              ),
              24.height,
              Container(
                height: 101,
                width: Get.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: const Color.fromRGBO(250, 250, 250, 1),
                    border: Border.all(
                        width: 3,
                        color: const Color.fromRGBO(201, 179, 114, 1))),
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
                      style: theme.textTheme.titleMedium,
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
                    color: Color.fromRGBO(250, 250, 250, 1),
                    border: Border.all(
                        width: 3,
                        color: const Color.fromRGBO(201, 179, 114, 1))),
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
                      style: theme.textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
              24.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Expanded(
                    child: Divider(
                      height: 1,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    ' or ',
                    style: theme.textTheme.bodyMedium,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Expanded(
                      child: Divider(
                    height: 1,
                  )),
                ],
              ),
              24.height,
              GestureDetector(
                onTap: () {
                  // controller.getImage(ImageSource.camera);
                },
                child: Container(
                  height: 58,
                  width: Get.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color.fromRGBO(243, 243, 243, 1)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.string(Appicons.camera),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        'Open Camera & Take Photo',
                        style: theme.textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(24),
        child: AppButton(
          title: 'Continue',
          onTap: () async {
            controller.uploadProfileImage();
          },
        ),
      ),
    );
  }
}
