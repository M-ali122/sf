
// ignore_for_file: prefer_typing_uninitialized_variables

  import 'package:flutter/material.dart';
  import 'package:flutter_screenutil/flutter_screenutil.dart';
  import 'package:get/get.dart';

import '../../resources/color/app_color.dart';

  ///This is generic class for action button in whole app
  class AppButton extends StatelessWidget{
    ///This will be button [title]
    final String title;
    final  onTap;
    final Gradient? gradient;
    final Color? background;
        final Color? foreground;
    final double margin;
    const AppButton({
      super.key,
      required this.title,
      required this.onTap,
      this.background,this.foreground,
      this.margin=0,
      this.gradient
    });


    @override
    Widget build(BuildContext context) {
          return GestureDetector(
        onTap: onTap,
        child: Container(
          width: Get.width,
          height: 58.h,
          margin: EdgeInsets.symmetric(horizontal: margin),
          decoration: BoxDecoration(
            // color: background?? Color(0xff72975E),
            // gradient: AppColor.mainGradient ?? gradient,
            gradient: gradient ?? AppColor.mainGradient,
            borderRadius: BorderRadius.circular(25),
          ),
          // padding: const EdgeInsets.all(16),
          alignment: Alignment.center,
          child: Text(title,style: TextStyle(color: foreground??Colors.white),),
        ),
      );
    }
  }