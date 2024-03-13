import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../resources/color/app_color.dart';

class OtpCustomConatiner extends StatelessWidget {

  final Color? color;

  const OtpCustomConatiner({super.key,this.color});

  @override
  Widget build(BuildContext context) {


    return Container(
      height: 60,
      child: OtpTextField(
        fillColor: AppColor.GreyScale50,
        filled: true,
        margin: EdgeInsets.symmetric(horizontal: 11),
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        enabledBorderColor: AppColor.GreyScale200,
        focusedBorderColor: AppColor.secondaryColor500,
        numberOfFields: 4,
        borderRadius: BorderRadius.circular(16),
        fieldWidth: 60,
        showFieldAsBox: true,
        decoration: InputDecoration(
        ),
      ),
    );
  }
}
