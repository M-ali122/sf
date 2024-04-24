import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sf_app/pages/onboarding/view/account_type.dart';
import 'package:sf_app/pages/registration/dialogs/registration_progressD_dialog.dart';
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
  Timer? emailVerificationTimer;
  final RxInt resentOtpTimer = 60.obs; //seconds

  completeRegistration() async {
    //TODO: Hit registration api
    Get.dialog(const RegistrationProgressDialog());
    //TODO: wait for response
    Timer(const Duration(seconds: 2), () async {
      Get.toNamed(AccountType.route);
    });
  }

  uploadProfileImage() async {
    //TODO: upload profile image
    onChangeView(4);
  }

  setupPassword() async {
    //TODO: update password of user
    onChangeView(3);
  }

  verifyOtp() async {
    //TODO: verify OTP code
    endTimer();
    onChangeView(2);
  }

  ///To start email reset timer
  startTimer() {
    if (emailVerificationTimer != null) {
      emailVerificationTimer!.cancel();
      emailVerificationTimer = null;
    }
    emailVerificationTimer =
        Timer.periodic(const Duration(seconds: 1), (timer) {
      resentOtpTimer.value--;
      update();
      if (resentOtpTimer.value == 0) {
        timer.cancel();
      }
    });
  }

//to stop email reset counting
  endTimer() {
    if (emailVerificationTimer != null) {
      emailVerificationTimer!.cancel();
      emailVerificationTimer = null;
    }
  }

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
