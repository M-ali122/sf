// ignore: unused_import
import 'package:flutter/foundation.dart';

class Apis {
 
  String get baseUrl => 'http://192.168.100.3:8001';


  String get baseApiUrl => "$baseUrl/api";

  String get signIn => "$baseApiUrl/settings";
  // String get signUpWithEmail => '$baseApiUrl/signup-with-email';
  // String get loginWithEmail => '$baseApiUrl/login-with-email';
  // String get forget => '$baseApiUrl/password-reset-api';

}
