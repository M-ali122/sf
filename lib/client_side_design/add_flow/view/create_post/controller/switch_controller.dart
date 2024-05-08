import 'package:get/get.dart';

class SwitchController extends GetxController {

  RxBool notification = false.obs;

  turnSwitch(bool value){
    notification.value = value;
  }

  
}