import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sf_app/client_side_design/Events/screens/create_post.dart';
import 'package:sf_app/client_side_design/add_flow/view/create_post/view/blank_index.dart';
import 'package:sf_app/client_side_design/community/view/community_tab_screen.dart';
import 'package:sf_app/client_side_design/order/view/order_screen.dart';
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
    // BlankIndex(),
    CreatePostScreen(),
    const CommunityTabs(),
    const Center(
      child: Text('profile'),
    )
  ];
}
