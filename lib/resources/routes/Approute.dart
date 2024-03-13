
import 'package:flutter/material.dart';
import 'package:sf_app/pages/home/view/home_view.dart';
import 'package:sf_app/pages/onboarding/onboardind_view.dart';
import 'package:sf_app/pages/onboarding/view/account_type.dart';
import 'package:sf_app/pages/splash/view/splash_view.dart';
import 'package:sf_app/registration/view/otp_screen.dart';

import '../../pages/onboarding/view/onboarding_third_screen.dart';
import '../../pages/onboarding/view/explore_trending_style.dart';
import '../../pages/onboarding/view/onboard_second_screen.dart';
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
    Explore_Trending.route: (p0) => Explore_Trending(),
    OnboardSecond.route: (p0) => OnboardSecond(),
    OnboardThird.route: (p0) => OnboardThird(),


    HomeView.route:(p0) => HomeView(),
    OnbaordingView.route:(p0) => OnbaordingView(),
  };
}
