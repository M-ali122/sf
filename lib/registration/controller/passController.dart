import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PasswordStrengthController extends GetxController {
  final TextEditingController passwordController = TextEditingController();
  final RxString passwordStrength = ''.obs;

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
}