import 'package:get/get.dart';

class HomeController extends GetxController {
  RxString seletedIndex = "0".obs;

  void changeIndex(value) {
    seletedIndex.value = value;
    update();
  }

RxList<bool> isCheckedList = <bool>[false,false,false].obs;


void toggleCheckbox (int index){
  isCheckedList[index] = !isCheckedList[index];
}

}
