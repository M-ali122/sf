import 'package:flutter/material.dart';
import 'package:sf_app/desinger_side/navbar/view/designer_side_navbar.dart';
import 'package:sf_app/desinger_side/pages/dashboard/view/dashboard_screen.dart';
import 'package:sf_app/desinger_side/pages/dashboard/view/product_gallery.dart';
import 'package:sf_app/pages/auth/screens/login.dart';
import 'package:sf_app/pages/categories/screens/category_products.dart';
import 'package:sf_app/pages/community/view/community_card_design.dart';
import 'package:sf_app/pages/community/view/community_tab_screen.dart';
import 'package:sf_app/pages/home/pages/women_categories.dart';
import 'package:sf_app/pages/home/view/home_screen.dart';
import 'package:sf_app/pages/message/view/inbox.dart';
import 'package:sf_app/pages/navbar/view/bottom_navbar.dart';
import 'package:sf_app/pages/onboarding/onboardind_view.dart';
import 'package:sf_app/pages/onboarding/view/account_type.dart';
import 'package:sf_app/pages/onboarding/view/explore_trending_style.dart';
import 'package:sf_app/pages/onboarding/view/onboard_second_screen.dart';
import 'package:sf_app/pages/onboarding/view/onboarding_third_screen.dart';
import 'package:sf_app/pages/order/view/order_detail_tabs.dart';
import 'package:sf_app/pages/order/view/order_screen.dart';
import 'package:sf_app/pages/products/screens/product_details.dart';
import 'package:sf_app/pages/registration/screens/registration_screen.dart';
import 'package:sf_app/pages/registration/view/otp_screen.dart';
import 'package:sf_app/pages/registration/view/password_screen.dart';
import 'package:sf_app/pages/registration/view/terms_and_condition.dart';
import 'package:sf_app/pages/registration/view/uplaod_profile_screen.dart';
import 'package:sf_app/pages/splash/view/splash_view.dart';

class AppRoute {
  final Map<String, Widget Function(BuildContext)> routes = {
    Splash_View.route: (p0) => const Splash_View(),

    /// client screen routes
    RegistrationScreen.route: (p0) => const RegistrationScreen(),
    LoginScreen.route: (p0) => const LoginScreen(),
    OtpScreen.route: (p0) => const OtpScreen(),
    PasswordScreen.route: (p0) => const PasswordScreen(),
    UploadProfileView.route: (p0) => const UploadProfileView(),
    TermAndCondition.route: (p0) => TermAndCondition(),
    ProductDetails.route: (p0) => ProductDetails(),
    AccountType.route: (p0) => const AccountType(),
    Explore_Trending.route: (p0) => const Explore_Trending(),
    OnboardSecond.route: (p0) => const OnboardSecond(),
    OnboardThird.route: (p0) => const OnboardThird(),
    BottomnavBar.route: (p0) => const BottomnavBar(),
    OrderView.route: (p0) => OrderView(),

    CategoryProducts.route: (p0) => const CategoryProducts(),

    HomeScreen.route: (p0) => HomeScreen(),
    WomenCategroies.route: (p0) => WomenCategroies(),

    WomenCategroies.route: (p0) => WomenCategroies(),

    OnbaordingView.route: (p0) => const OnbaordingView(),
    OrderTabbarScreen.route: (p0) => const OrderTabbarScreen(),
    CommunityTabs.route: (p0) => const CommunityTabs(),
    CardDesign.route: (p0) => CardDesign(),

    Inbox.route: (p0) => Inbox(),

    /// designer side navbar
    DesingerBottomnavBar.route: (p0) => DesingerBottomnavBar(),

    DesignerDashbaord.route: (p0) => DesignerDashbaord(),
    ProductGallery.route: (p0) => ProductGallery(),
  };
}
