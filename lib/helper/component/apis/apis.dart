// ignore: unused_import
import 'package:flutter/foundation.dart';

class Apis {
  String get baseUrl => 'https://sfh.abulkalam.dev';

  String get baseApiUrl => "$baseUrl/api";

  String get registered => "$baseApiUrl/register";
  String get verifyOtp => "$baseApiUrl/email_otp_verified";

  String get login => "$baseApiUrl/login";

  String get userType => "$baseApiUrl/user_types";
  String get categorySearch => "$baseApiUrl/categories?search";
  String get settings => "$baseApiUrl/settings";
  String get createPassword => "$baseApiUrl/create_password";
  String get uploadProfileImage => "$baseApiUrl/images";
}
