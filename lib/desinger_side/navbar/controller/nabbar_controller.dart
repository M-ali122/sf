import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sf_app/desinger_side/pages/dashboard/view/dashboard_screen.dart';

class DesignerBottomNavBarController extends GetxController {
  RxInt currentIndex = 0.obs;

  void changePage(index) {
    currentIndex.value = index;

    update();
  }

  final List<Widget> pages = [
    const Center(
      child: DesignerDashbaord(),
    ),
    const Center(
      child: Text('Order'),
    ),
    const Center(
      child: Text('add'),
    ),
    const Center(child:Text('Community')),
    const Center(
      child: Text('profile'),
    )
  ];
}
