import 'dart:convert';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sf_app/user/model/user_model.dart';

class UserController extends  GetxController{


Rx<UserModel> user = UserModel().obs; 

 @override
  void onInit() {
    super.onInit();
   
    loadUser();
  }



  loadUser() {
    var d = GetStorage().read('user');

    if (d != null) {
      user.value = UserModel.fromJson(jsonDecode(d));
      print(d);
    }
  }

  void logout() {
    try {
      GetStorage().remove("user").then((value) {
        // Get.offAllNamed(EmailLoginScreen.route);
      });
    } catch (e) {}
  }


  
}