
import 'package:flutter/material.dart';
import 'package:sf_app/pages/home/view/home_view.dart';
import 'package:sf_app/pages/navbar/view/navbar_view.dart';
import 'package:sf_app/pages/onboarding/onboardind_view.dart';
import 'package:sf_app/pages/onboarding/view/account_type.dart';
import 'package:sf_app/pages/splash/view/splash_view.dart';
import 'package:sf_app/pages/top_categories/women_categories.dart';
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

    Splash_View.route: (p0) => const  Splash_View(),

    /// client screen routes
    RegistrationForm.route: (p0) => const  RegistrationForm(),
    OtpScreen.route: (p0) => const OtpScreen(),
    PasswordScreen.route: (p0) => const PasswordScreen(),
    UploadProfileView.route: (p0) => const UploadProfileView(),
    TermAndCondition.route: (p0) => TermAndCondition(),
    AccountType.route: (p0) => AccountType(),
    Explore_Trending.route: (p0) => const Explore_Trending(),
    OnboardSecond.route: (p0) => const OnboardSecond(),
    OnboardThird.route: (p0) => const OnboardThird(),
    BottomnavBar.route: (p0) => const BottomnavBar(),



    HomeView.route:(p0) =>  HomeView(),
    WomenCategroies.route: (p0) => WomenCategroies(),
// =======
//     HomeView.route:(p0) => HomeView(),
    OnbaordingView.route:(p0) => OnbaordingView(),
// >>>>>>> 9974508597de6240b38cce8d67f2fd134acb9f5a
  };
}
