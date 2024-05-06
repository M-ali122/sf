import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class MessageController extends GetxController {
  RxInt selectedIndex = 0.obs;

  void changeIndex(val) {
    selectedIndex.value.val;
    update();
  }
}
