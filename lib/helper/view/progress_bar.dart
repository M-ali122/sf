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
      backgroundColor: Color(0xffEEEEEE),
      valueColor: AlwaysStoppedAnimation<Color>(Color(0xff72975E)),
    );
  }
}

