// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../resources/color/app_color.dart';

class OtpCustomConatiner extends StatelessWidget {
  final Color? color;

  const OtpCustomConatiner({super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(

        // alignment: Alignment.center,
        width: 390.w,
        height: 90.h,
        child: Stack(
          children: [
            Positioned(
              left: 16,
              bottom: 0,
              top: 0,
              child: OtpTextField(
                fillColor: AppColor.GreyScale50,
                filled: true,
                margin: const EdgeInsets.all(8),
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                enabledBorderColor: AppColor.GreyScale200,
                focusedBorderColor: AppColor.secondaryColor500,
                numberOfFields: 4,
                borderRadius: BorderRadius.circular(16),
                fieldWidth: 70.w,
                showFieldAsBox: true,
                textStyle: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
                decoration: const InputDecoration(),
              ),
            ),
          ],
        ));
  }
}
