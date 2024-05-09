
import 'package:get/get.dart';
import 'package:sf_app/client_side_design/auth/model/user_model.dart';
import 'package:sf_app/client_side_design/onboarding/onboardind_view.dart';
import 'package:sf_app/helper/component/apis/api_callback.dart';
import 'package:sf_app/helper/component/apis/apis.dart';

class UserController extends GetxController {
  final RxBool isBusy = false.obs;


  Rx<UserModel> user = UserModel().obs;

  login() async {
    try {
      var req = await AuthRequest().post(api: Apis().login, data: {
        'email': user.value.email,
        'password': user.value.password,
      });

      if(req!=null && req.data!=null){
        user.value=UserModel.fromJson(req.data['user']);
        Get.toNamed(OnbaordingView.route);
        //
      }
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

