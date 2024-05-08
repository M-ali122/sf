import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sf_app/client_side_design/community/view/commint_screen.dart';
import 'package:sf_app/client_side_design/community/view/community_tab_screen.dart';
import 'package:sf_app/client_side_design/order/view/order_screen.dart';
import 'package:sf_app/client_side_design/profile/view/profile_view.dart';
import 'package:sf_app/desinger_side/ui/dashboard/view/dashboard_screen.dart';

class DesignerBottomNavBarController extends GetxController {
  RxInt currentIndex = 0.obs;

  void changePage(index) {
    currentIndex.value = index;

    update();
  }

  final List<Widget> pages = [
    const DesignerDashbaord(),
    OrderView(),
    // const DesignerDashbaord(),
   /// BlankIndex(),
    // CreatePostScreen(),
    const CommunityTabs(),
    ProfileView(),
  ];
}
