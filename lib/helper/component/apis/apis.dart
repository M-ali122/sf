// ignore: unused_import
import 'package:flutter/foundation.dart';

class Apis {
 
  String get baseUrl => 'http://192.168.100.3:8001';


  String get baseApiUrl => "$baseUrl/api";

  String get login => "$baseApiUrl/login";

  String get userType => "$baseApiUrl/user_types";
  String get categorySearch => "$baseApiUrl/categories?search";
  String get settings => "$baseApiUrl/settings";
  String get createPassword => "$baseApiUrl/create_password"; 
  String get uploadProfileImage => "$baseApiUrl/images";

}
