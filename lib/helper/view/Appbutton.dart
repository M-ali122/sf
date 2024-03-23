
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../resources/color/app_color.dart';

  ///This is generic class for action button in whole app
  class AppButton extends StatelessWidget{
    ///This will be button [title]
    final String title;
    // ignore: prefer_typing_uninitialized_variables
    final  onTap;
    final Gradient? gradient;
    final Color? background;
    final double? width;
    final double? height;    
    final Color? foreground;
    final double margin;
    const AppButton({
      super.key,
      required this.title,
      required this.onTap,
      this.width,
      this.height,
      this.background,this.foreground,
      this.margin=0,
      this.gradient
    });

    @override
    Widget build(BuildContext context) {
      // final theme = Get.theme;
      return GestureDetector(
        onTap: onTap,
        child: Container(
          width: width??Get.width,
          height: height??58.h,
          margin: EdgeInsets.symmetric(horizontal: margin),
          decoration: BoxDecoration(
            // color: background?? Color(0xff72975E),
            // gradient: AppColor.mainGradient ?? gradient,
            gradient: gradient ?? AppColor.mainGradient,
            borderRadius: BorderRadius.circular(25),
          ),
          // padding: const EdgeInsets.all(16),
          alignment: Alignment.center,
          child: Text(title,style: GoogleFonts.mulish(
            fontWeight: FontWeight.w700,
            fontSize: 16,
            color: foreground??Colors.white),),
        ),
      );
    }
  }