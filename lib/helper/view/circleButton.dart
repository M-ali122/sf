import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../resources/color/app_color.dart';

///This is generic class for action button in whole app
class CircleButton extends StatelessWidget{
  ///This will be button [title]
  final String? title;
  final  onTap;
  final Gradient? gradient;
  final Color? background;
  final Color? foreground;
  final double margin;
  final IconData? icon;
  const CircleButton({
    super.key,
     this.title,
    required this.onTap,
    this.icon,
    this.background,this.foreground,
    this.margin=0,
    this.gradient
  });

  @override
  Widget build(BuildContext context) {
    final theme = Get.theme;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 62,
        height: 62,
        margin: EdgeInsets.symmetric(horizontal: margin),
        decoration: BoxDecoration(
          gradient: gradient ?? AppColor.mainGradient,
          color: background,
          shape: BoxShape.circle
        ),
        alignment: Alignment.center,
        child: Icon(icon, color: foreground??Colors.white,),
      ),
    );
  }
}