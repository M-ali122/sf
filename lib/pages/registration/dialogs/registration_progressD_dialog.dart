import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:sf_app/pages/registration/controller/registration_controller.dart';
import 'package:sf_app/resources/color/app_color.dart';
import 'package:sf_app/resources/icon/svgs.dart';

class RegistrationProgressDialog extends GetWidget<RegistrationController> {
  const RegistrationProgressDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(64.0),
      ),
      backgroundColor: AppColor.white,
      icon: SvgPicture.string(Svgs.RegistrationCompleted),
      title: const Text(
        'Registration Completed',
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w700,
          fontFamily: "Mulish",
          color: Color.fromRGBO(33, 33, 33, 1),
        ),
      ),
      actions: const [
        Text(
          'You will be redirected to the choice page in a moment',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            fontFamily: "Mulish",
            color: Color.fromRGBO(33, 33, 33, 1),
          ),
        ),
        SizedBox(
          height: 25,
        ),
        SpinKitCircle(
          color: Color(0xff72975E),
          size: 50.0,
          // controller: AnimatedController,
        ),
      ],
    );
  }
}
