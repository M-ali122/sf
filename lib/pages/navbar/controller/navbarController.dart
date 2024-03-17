import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sf_app/pages/home/view/home_view.dart';

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
const Center(
  child: Text('Order'),
),
const Center(
  child: Text('Community'),
),
const Center(
  child: Text('Profile'),
)

];



}