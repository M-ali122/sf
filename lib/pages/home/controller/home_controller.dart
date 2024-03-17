import 'package:get/get.dart';

class HomeController extends GetxController {
  RxString seletedIndex = "0".obs;

  void changeIndex(value) {
    seletedIndex.value = value;
    update();
  }

  // RxString selected
  // toggleButton()



}
