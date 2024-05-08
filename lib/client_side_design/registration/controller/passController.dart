import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sf_app/helper/component/apis/api_callback.dart';
import 'package:sf_app/helper/component/apis/apis.dart';


class PasswordStrengthController extends GetxController {
  final TextEditingController passwordController = TextEditingController();
  final RxString passwordStrength = ''.obs;
@override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    // creataPassword();
  }
  void checkPasswordStrength(String value) {
    if (value.length < 6) {
      passwordStrength.value = 'Weak';
    } else if (value.length >= 6 &&
        RegExp(r'[A-Z]').hasMatch(value) &&
        RegExp(r'[a-z]').hasMatch(value) &&
        RegExp(r'[0-9]').hasMatch(value) &&
        RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(value)) {
      passwordStrength.value = 'Strong';
    } else {
      passwordStrength.value = 'Moderate';
    }
  }

  XFile? _image;
  XFile? get image => _image;


  Future<void> getImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: source);

      if (pickedFile != null) {
        _image = XFile(pickedFile.path);
        print("pickekd");
      } else {
        print('No image selected.');
      }

  }



void createPassword(value) async {
  try {
      
      Map<String, dynamic> postData = {
      'password': value,
    };

    final req = await AuthRequest().post(api: Apis().createPassword, data: postData);

    print('pass request is $postData');
   
  } catch (e) {
    print('Error occurred while creating password: $e');
  }
}



}