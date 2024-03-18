import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sf_app/pages/home/view/home_view.dart';
import 'package:sf_app/pages/order/view/order_view.dart';

class BottomNavBarController extends GetxController {
  
   RxInt currentIndex = 0.obs;



void changePage (index){

currentIndex.value = index;

update();

}



final List<Widget> pages = [

Center(
  child: HomeView(),
),
 Center(
  child: OrderView(),
),
const Center(
  child: Text('Community'),
),
const Center(
  child: Text('Profile'),
)

];



}