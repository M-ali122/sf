import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sf_app/pages/community/view/community_tab_screen.dart';
import 'package:sf_app/pages/home/view/home_screen.dart';
import 'package:sf_app/pages/order/view/order_screen.dart';
import 'package:sf_app/pages/profile/view/profile_view.dart';

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
    Center(child: CommunityTabs()),
    Center(
      child: ProfileView(),
    )
  ];
}
