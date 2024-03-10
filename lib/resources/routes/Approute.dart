
import 'package:flutter/material.dart';
import 'package:sf_app/pages/onboarding/account_type.dart';
import 'package:sf_app/pages/splash/view/splash_view.dart';
import 'package:sf_app/registration/view/otp_screen.dart';

import '../../pages/screens/terms_and_condition.dart';
import '../../registration/uplaod_profile_screen.dart';
import '../../registration/view/password_screen.dart';
import '../../registration/view/registration_form.dart';

class AppRoute {
  final Map<String, Widget Function(BuildContext)> routes = {

    Splash_View.route: (p0) => Splash_View(),

    /// client screen routes
    RegistrationForm.route: (p0) => RegistrationForm(),
    OtpScreen.route: (p0) => OtpScreen(),
    PasswordScreen.route: (p0) => PasswordScreen(),
    UploadProfileView.route: (p0) => UploadProfileView(),
    TermAndCondition.route: (p0) => TermAndCondition(),
    AccountType.route: (p0) => AccountType(),
  };
}
