import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sf_app/client_side_design/community/view/community_tab_screen.dart';
import 'package:sf_app/client_side_design/home/view/home_screen.dart';
import 'package:sf_app/client_side_design/order/view/order_screen.dart';
import 'package:sf_app/client_side_design/profile/view/profile_view.dart';

class BottomNavBarController extends GetxController {
  RxInt currentIndex = 0.obs;

  void changePage(index) {
    currentIndex.value = index;

    update();
  }

  final List<Widget> pages = [
    Center(
      child: HomeScreen(),
    ),
    Center(
      child: OrderView(),
    ),
    const Center(child: CommunityTabs()),
    Center(
      child: ProfileView(),
    )
  ];
}
