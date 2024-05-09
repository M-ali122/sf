import 'dart:convert';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sf_app/client_side_design/auth/model/login_model.dart';
import 'package:sf_app/client_side_design/navbar/view/bottom_navbar.dart';
import 'package:sf_app/helper/component/apis/api_callback.dart';
import 'package:sf_app/helper/component/apis/apis.dart';
import 'package:sf_app/user/controller/user_controller.dart';
import 'package:sf_app/user/model/user_model.dart';

class LoginController extends GetxController {
  final RxBool isBusy = false.obs;

  Rx<LoginModel> loginModel = LoginModel().obs;
  UserController userController = Get.put(UserController());

  login() async {
    // print(loginModel.value.toJson());
    Map<String , dynamic > data = {
      'email': loginModel.value.email,
      'password': loginModel.value.password,
    };

  
    try {
      var req = await AuthRequest().post(api: Apis().login, data: data);

print("login ");


    //  if (req != null && req.data != null ) {
        userController.user.value = UserModel.fromJson(req!.data['user']);
        GetStorage()
            .write("user", jsonEncode(userController.user.value.toJson()));
        userController.loadUser();

        print("login done");


        // Get.toNamed(OnbaordingView.route);
        Get.toNamed(BottomnavBar.route);
    //   }else{
    //     print("login failed");
    //   }
    } catch (e) {
      //
    } finally {}
  }

  _toggle() {
    isBusy.toggle();
    update();
  }

  loadUser() {}
}
