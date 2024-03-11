import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController {
  RxString seletedIndex = "0".obs;

  void changeIndex(value) {
    seletedIndex.value = value;
    update();
  }
}
