import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ColorControllerButton extends GetxController {
  Rx<Color> selectedColor = Color.fromARGB(255, 241, 225, 225).obs;

  void setSelectedColor(Color color) {
    selectedColor.value = color;
  }
  Rx<int> selectedIndex = (-1).obs;

  void setSelectedIndex(int index) {
    selectedIndex.value = index;
  }

RxInt selectedSize = 0.obs;
  changeSize(val){
selectedSize.value = val;
update();



  }
  final List<String> boxNames = [
    'XXS',
    'XS',
    'S',
    'M',
    'L',
    'XL',
    'XXL',
    '35',
    '36',
    '37',
    '38',
    '39',
    '40',
    '41',
    '42',
    '43',
    '44',
    '45',
  ].obs;
}