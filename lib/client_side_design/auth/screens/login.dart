import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sf_app/client_side_design/auth/controllers/login_controller.dart';
import 'package:sf_app/client_side_design/onboarding/onboardind_view.dart';
import 'package:sf_app/helper/view/Appbutton.dart';
import 'package:sf_app/helper/view/custome_textfield.dart';

class LoginScreenn extends StatelessWidget {
  static String route = '/login';

   LoginScreenn({super.key});

  @override
  Widget build(BuildContext context) {
      final LoginController controller = Get.put(LoginController());
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          SizedBox(height: 170.h,),
           CustomTextField(
  
            onChange: (val) => controller.loginModel.value.email = val,
            
            heading: 'Email',
            title: 'Enter your email',

          ),
          const SizedBox(height: 30,),
           CustomTextField(
            onChange: (val) => controller.loginModel.value.password = val ,
            
            heading: 'Password',
            title: 'Enter your password',

          ),
           SizedBox(height: 330.h,),
          Obx(() => controller.isBusy == true ? CircularProgressIndicator(): AppButton(title: 'Continue', onTap: (){

            
            

            controller.login();


            
          }))
        ],

      ),
    );
  }
}
