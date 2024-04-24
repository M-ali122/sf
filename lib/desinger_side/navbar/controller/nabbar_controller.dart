import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sf_app/desinger_side/pages/dashboard/view/dashboard_screen.dart';
import 'package:sf_app/pages/Events/add_event.dart';
import 'package:sf_app/pages/Events/dialogbox.dart';
import 'package:sf_app/pages/Events/screens/create_post.dart';
import 'package:sf_app/pages/community/view/commint_screen.dart';
import 'package:sf_app/pages/community/view/community_tab_screen.dart';
import 'package:sf_app/pages/order/view/order_screen.dart';

class DesignerBottomNavBarController extends GetxController {
  RxInt currentIndex = 0.obs;

  void changePage(index) {
    currentIndex.value = index;

    update();
  }

  final List<Widget> pages = [
    const DesignerDashbaord(),
    OrderView(),
    CreatePostScreen(),
    const CommunityTabs(),
    const Center(
      child: Text('profile'),
    )
  ];
}
