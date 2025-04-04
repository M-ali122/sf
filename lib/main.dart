import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sf_app/modules/global/controllers/bindings.dart';
import 'package:sf_app/client_side_design/splash/view/splash_view.dart';
import 'package:sf_app/resources/languages/dictionary.dart';
import 'package:sf_app/resources/routes/Approute.dart';
import 'package:sf_app/resources/theme/main_theme.dart';
import 'package:sf_app/resources/utils.dart';

void main() async{
  await GetStorage.init();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: Utils().appName,
          // You can use the library anywhere in the app even in theme
          theme: MainTheme().theme,
          initialBinding: MainBindings(),
          translations: AppDictionary(),

          routes: AppRoute().routes,
          initialRoute: Splash_View.route,
          // initialRoute: DesignerDashbaord.route,
        );
      },
    );
  }
}
