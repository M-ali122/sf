import 'package:flutter/material.dart';
import 'package:sf_app/client_side_design/auth/screens/login_screen.dart';
import 'package:sf_app/desinger_side/designer_navbar.dart/view/designer_side_navbar.dart';
import 'package:sf_app/desinger_side/ui/dashboard/view/dashboard_screen.dart';
import 'package:sf_app/desinger_side/ui/dashboard/view/product_gallery.dart';
import 'package:sf_app/client_side_design/categories/screens/category_products.dart';
import 'package:sf_app/client_side_design/community/view/community_card_design.dart';
import 'package:sf_app/client_side_design/community/view/community_tab_screen.dart';
import 'package:sf_app/client_side_design/home/screen/women_categories.dart';
import 'package:sf_app/client_side_design/home/view/home_screen.dart';
import 'package:sf_app/client_side_design/message/view/inbox.dart';
import 'package:sf_app/client_side_design/navbar/view/bottom_navbar.dart';
import 'package:sf_app/client_side_design/onboarding/onboardind_view.dart';
import 'package:sf_app/client_side_design/onboarding/view/account_type.dart';
import 'package:sf_app/client_side_design/onboarding/view/explore_trending_style.dart';
import 'package:sf_app/client_side_design/onboarding/view/onboard_second_screen.dart';
import 'package:sf_app/client_side_design/onboarding/view/onboarding_third_screen.dart';
import 'package:sf_app/client_side_design/order/view/order_detail_tabs.dart';
import 'package:sf_app/client_side_design/order/view/order_screen.dart';
import 'package:sf_app/client_side_design/products/screens/product_details.dart';
import 'package:sf_app/client_side_design/registration/screens/registration_screen.dart';
import 'package:sf_app/client_side_design/registration/view/otp_screen.dart';
import 'package:sf_app/client_side_design/registration/view/password_screen.dart';
import 'package:sf_app/client_side_design/registration/view/terms_and_condition.dart';
import 'package:sf_app/client_side_design/registration/view/uplaod_profile_screen.dart';
import 'package:sf_app/client_side_design/splash/view/splash_view.dart';

class AppRoute {
  final Map<String, Widget Function(BuildContext)> routes = {
    Splash_View.route: (p0) => const Splash_View(),

    /// client screen routes
    RegistrationScreen.route: (p0) => const RegistrationScreen(),
    LoginScreenn.route: (p0) => LoginScreenn(),
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
