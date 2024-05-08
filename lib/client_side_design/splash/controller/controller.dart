import 'dart:convert';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sf_app/client_side_design/splash/model/setting_model.dart';
import 'package:sf_app/client_side_design/welcome_screen/welcome_screen.dart';
import 'package:sf_app/helper/component/apis/api_callback.dart';
import 'package:sf_app/helper/component/apis/apis.dart';

class SplashController extends GetxController {
//  List<Map<String, dynamic>> settingList = [];

  RxList<SettingModel> settingList = <SettingModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    splashService();
    loadSettings();
    loadSettingsFromLocal();
  }

  void loadSettings() async {
    try {
      final req = await AuthRequest().get(api: Apis().settings);
      if (req != null) {
        for (var data in req.data) {
          settingList.add(SettingModel.fromJson(data));
        }
        GetStorage().write('settings', jsonEncode(req.data));
      }
    } catch (e) {
      print('Error occurred while loading settings: $e');
    }
  }

  loadSettingsFromLocal() {
    var boxstorage = GetStorage().read('settings');
    for (var data in jsonDecode(boxstorage)) {
      settingList.add(SettingModel.fromJson(data));
    }
    print('boxstorage data is $boxstorage');
  }

  void splashService() async {
    await Future.delayed(const Duration(seconds: 3));
    Get.off(() => const WelcomeView());
  }
}
