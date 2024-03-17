// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class CustomeProgressBar extends StatelessWidget {
  final progressValue;
  final Color? bg,fg;
  const CustomeProgressBar({
    super.key,
    required this.progressValue,
    this.fg,
    this.bg,
  });

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      minHeight: 8,
      value: progressValue,
      borderRadius: BorderRadius.circular(12),
      backgroundColor: const Color(0xffEEEEEE),
      valueColor: const AlwaysStoppedAnimation<Color>(Color(0xff72975E)),
    );
  }
}

