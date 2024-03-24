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
    const RegistrationForm(),
    const OtpScreen(),
    const PasswordScreen(),
    const UploadProfileView(),
    TermAndCondition(),
  ].obs;
  final RxInt currentSelectedViewIndex = 0.obs;

  onChangeView(int index) {
    currentSelectedViewIndex.value = index;

    update();
  }

  onRegister() async {
    //TODO : logics of saving user input

    //Navigate to Email verification
    onChangeView(1);
  }
}
