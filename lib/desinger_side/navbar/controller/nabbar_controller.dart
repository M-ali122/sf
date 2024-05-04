import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sf_app/desinger_side/pages/dashboard/view/dashboard_screen.dart';
import 'package:sf_app/pages/Add%20flows/view/Create%20post/view/create_post.dart';
import 'package:sf_app/pages/Add%20flows/view/Create%20product/view/create_product.dart';
import 'package:sf_app/pages/community/view/commint_screen.dart';
import 'package:sf_app/pages/community/view/community_tab_screen.dart';
import 'package:sf_app/pages/order/view/order_screen.dart';
import 'package:sf_app/pages/profile/view/profile_view.dart';

class DesignerBottomNavBarController extends GetxController {
  RxInt currentIndex = 0.obs;

  void changePage(index) {
    currentIndex.value = index;

    update();
  }

  final List<Widget> pages = [
    const DesignerDashbaord(),
    OrderView(),
    const CreateProduct(),
    const CommunityTabs(),
    ProfileView(),
  ];
}
