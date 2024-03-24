// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

import '../../resources/color/app_color.dart';

class OtpCustomConatiner extends StatelessWidget {

  final Color? color;

  const OtpCustomConatiner({super.key,this.color});

  @override
  Widget build(BuildContext context) {


    return SizedBox(
      height: 60,
      child: OtpTextField(
        fillColor: AppColor.GreyScale50,
        filled: true,
        margin: const EdgeInsets.symmetric(horizontal: 11),
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        enabledBorderColor: AppColor.GreyScale200,
        focusedBorderColor: AppColor.secondaryColor500,
        numberOfFields: 4,
        borderRadius: BorderRadius.circular(16),
        fieldWidth: Get.width * 0.177,
        showFieldAsBox: true,
        decoration: const InputDecoration(
        ),
      ),
    );
  }
}
