import 'package:get/get.dart';

class CheckboxController extends GetxController {
  var isPrivacyChecked = false.obs;

  void togglePrivacyCheckbox(bool value) {
    isPrivacyChecked.value = value;
  }


  var isTermsChecked = false.obs;

  void toggleTermsCheckbox(bool value) {
    isTermsChecked.value = value;
  }
}