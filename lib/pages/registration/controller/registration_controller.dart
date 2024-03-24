import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sf_app/pages/registration/view/terms_and_condition.dart';
import 'package:sf_app/pages/registration/view/otp_screen.dart';
import 'package:sf_app/pages/registration/view/password_screen.dart';
import 'package:sf_app/pages/registration/view/registration_form.dart';
import 'package:sf_app/pages/registration/view/uplaod_profile_screen.dart';

class RegistrationController extends GetxController {
  final RxBool busy = false.obs;
  final RxList<Widget> views = [
    RegistrationForm(),
    OtpScreen(),
    PasswordScreen(),
    UploadProfileView(),
    TermAndCondition(),
  ].obs;
}
