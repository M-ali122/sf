
import 'package:flutter/material.dart';
import 'package:sf_app/pages/splash/view/splash_view.dart';
import 'package:sf_app/registration/otp_screen.dart';

import '../../registration/registration_form.dart';

class AppRoute {
  final Map<String, Widget Function(BuildContext)> routes = {

    Splash_View.route: (p0) => Splash_View(),

    /// screen routes
    RegistrationForm.route: (p0) => RegistrationForm(),
    OtpScreen.route: (p0) => OtpScreen(),
  };
}
