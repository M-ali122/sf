import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sf_app/resources/color/app_color.dart';
import 'package:sf_app/resources/icon/icon.dart';

import '../helper/view/Appbutton.dart';
import '../helper/view/progress_bar.dart';
import '../helper/view/textfield.dart';


class UploadProfileView extends StatelessWidget {
  static String route = 'UploadProfileView';
  const UploadProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Get.theme;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            children: [
              SizedBox(height: 10.h),
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
                      progressValue: 0.7,
                    ),
                  ),
                  const SizedBox(width: 50),
                ],
              ),
              SizedBox(height: 30.h),
              Text(
                'Upload your profile picture & your brand logo',
                style: theme.textTheme.headline4,
              ),
              SizedBox(height: 20.h,),

              Container(
                height: 101,
                width: Get.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: AppColor.GreyScale50,
                  border: Border.all(
                    color: AppColor.secondaryColor500
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.string(
                        icon.image3,
                      color: AppColor.GreyScale500,
                    ),
                    const SizedBox(height: 10,),
                    Text(
                        'Profile Picture',
                      style: theme.textTheme.subtitle1,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20,),
              Container(
                height: 101,
                width: Get.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: AppColor.GreyScale50,
                    border: Border.all(
                        color: AppColor.secondaryColor500
                    )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.string(
                      icon.image3,
                      color: AppColor.GreyScale500,
                    ),
                    const SizedBox(height: 10,),
                    Text(
                      'Brand Logo',
                      style: theme.textTheme.subtitle1,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Divider(
                      height: 1,
                      color: AppColor.GreyScale200,
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text('or',
                  style: theme.textTheme.bodyText2,
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                      child: Divider(
                        height: 1,
                        color: AppColor.GreyScale200,
                      )
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Container(
                height: 58,
                width: Get.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: AppColor.backGroundSilver
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.string(icon.camera),
                    SizedBox(width: 10.w,),
                    Text('Open Camera & Take Photo',
                      style: theme.textTheme.bodyText1,
                    ),
                  ],
                ),
              ),

              SizedBox(height:130.h),
              /// App Button
              AppButton(
                  title: 'Continue',
                  onTap: (){
                    Get.toNamed(UploadProfileView.route);
                  }
              ),
              const SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }
}
