import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sf_app/client_side_design/auth/model/user_model.dart';
import 'package:sf_app/client_side_design/onboarding/view/account_type.dart';
import 'package:sf_app/client_side_design/registration/dialogs/registration_progressD_dialog.dart';
import 'package:sf_app/client_side_design/registration/view/terms_and_condition.dart';
import 'package:sf_app/client_side_design/registration/view/otp_screen.dart';
import 'package:sf_app/client_side_design/registration/view/password_screen.dart';
import 'package:sf_app/client_side_design/registration/view/registration_form.dart';
import 'package:sf_app/client_side_design/registration/view/uplaod_profile_screen.dart';
import 'package:sf_app/helper/component/apis/api_callback.dart';
import 'package:sf_app/helper/component/apis/apis.dart';

class RegistrationController extends GetxController {
  Rx<UserModel> user = UserModel().obs;

  loadUser() {}

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

  setupPassword(password) async {
    toggle();
    Map<String, dynamic> data = {
      "password": password,
    };
    try {
      var req =
          await AuthRequest().post(api: Apis().createPassword, data: data);

      if (req != null && req.data != null) {
//TODO: update password of user
        onChangeView(3);
      }
    } catch (e) {
      throw Exception(e);
    } finally {
      toggle();
    }
  }

  String otp = "";
  verifyOtp() async {
    toggle();

    try {
      Map<String, dynamic> data = {
        'otp': otp,
      };
      print(data);
      var req = await AuthRequest().post(api: Apis().verifyOtp, data: data);
      // if (req != null) {
      endTimer();
      onChangeView(2);
      // }
    } catch (e) {
      throw Exception(e);
      toggle();
    } finally {
      toggle();
    }
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
    toggle();

    try {
      var req = await AuthRequest()
          .post(api: Apis().registered, data: user.value.toJson());
      //Navigate to Email verification

      // if (req != null && req.data != null) {
      print("Access Token ${req!.data['access_token']}");

      user.value.token = req.data['access_token'];

      onChangeView(1);
      // }
    } catch (e) {
      throw Exception(e);
    } finally {
      toggle();
    }
  }

  RxBool isBusy = false.obs;
  toggle() {
    isBusy.toggle();
    update();
  }
}
