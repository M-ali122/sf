import 'package:get/get.dart';

class LoginController extends GetxController {
  final RxBool isBusy = false.obs;

  _toggle() {
    isBusy.toggle();
    update();
  }
}
