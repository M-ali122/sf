import 'package:flutter/material.dart';
import 'package:get/get.dart';



class ColorController extends GetxController {
  final List<Color> colors = [
    Colors.black,
    Colors.white,
    Colors.red,
    Colors.pink,
    Colors.purple,
    Colors.deepPurple,
    Colors.indigo,
    Colors.blue,
    Colors.lightBlue,
    Colors.teal,
    Colors.green,
    Colors.lime,
    Colors.yellow,
    Colors.amber,
    Colors.orange,
    Colors.deepOrange,
    Colors.brown,
    Colors.blueGrey,
  ];

  final List<String> colorNames = [
    'Black',
    'White',
    'Red',
    'Pink',
    'Purple',
    'DeepPur..',
    'Indigo',
    'Blue',
    'LightBl..',
    'Teal',
    'Green',
    'Lime',
    'Yellow',
    'Amber',
    'Orange',
    'Deep Pur..',
    'Brown',
    'BlueGr..',
  ];
  RxInt selectedColour = 0.obs;
  checkColor(val){
    selectedColour.value = val;
    update();
  }
  

}