import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController{
  final pagecontrol = PageController();
  RxBool isLast = false.obs;
  RxInt pageIndex = 0.obs;
  @override
  void dispose() {
    // TODO: implement dispose
    pagecontrol.dispose();
    super.dispose();
  }

  changePageIndex(int val){
    pageIndex.value = val;
    isLast.value = val == 2;
    update();
  }






}