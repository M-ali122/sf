// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///This is generic class for action button in whole app
class AppButton extends StatelessWidget {
  ///This will be button [title]
  final String title;
  // ignore: prefer_typing_uninitialized_variables
  final onTap;
  final Gradient? gradient;
  final Color? background;
  final TextStyle? style;
  final double? width;
  final double? height;
  final Color? foreground;
  final double margin;
  const AppButton(
      {super.key,
      required this.title,
      required this.onTap,
      this.width,
      this.height,
      this.background,
      this.foreground,
      this.style,
      this.margin = 0,
      this.gradient});

  @override
  Widget build(BuildContext context) {
    // final theme = Get.theme;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: (width ?? 380).w,
        height: (height ?? 58).h,
        margin: EdgeInsets.symmetric(horizontal: margin),
        decoration: BoxDecoration(
          gradient: gradient ??
              const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xff72975E),
                  Color(0xff475736),
                ],
              ),
          // gradient: gradient ?? AppColor.mainGradient,
          borderRadius: BorderRadius.circular(100.r),
        ),
        // padding: const EdgeInsets.all(16),
        alignment: Alignment.center,
        child: Text(
          title,
          style: style ?? TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16.sp,
              color: foreground ?? Colors.white
              ),
        ),
      ),
    );
  }
}
