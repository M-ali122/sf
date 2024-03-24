// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomeProgressBar extends StatelessWidget {
  final progressValue;
  final Color? bg, fg;
  const CustomeProgressBar({
    super.key,
    required this.progressValue,
    this.fg,
    this.bg,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 216.w,
      child: LinearProgressIndicator(
        minHeight: 8,
        value: progressValue,
        borderRadius: BorderRadius.circular(12),
        backgroundColor: const Color(0xffEEEEEE),
        valueColor: const AlwaysStoppedAnimation<Color>(Color(0xff72975E)),
      ),
    );
  }
}
