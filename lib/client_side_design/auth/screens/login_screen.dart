import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/client_side_design/auth/controllers/login_controller.dart';
import 'package:sf_app/helper/view/Appbutton.dart';
import 'package:sf_app/helper/view/custome_textfield.dart';

class LoginScreenn extends StatelessWidget {
  static String route = '/login';
  final LoginController controller = Get.put(LoginController());
  LoginScreenn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login',
          style:
              GoogleFonts.mulish(fontSize: 32.sp, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          SizedBox(
            height: 170.h,
          ),
          CustomTextField(
            // controller: userc,
            onChange: (val) => controller.loginModel.value.email,

            heading: 'Email',
            title: 'Enter your email',
          ),
          const SizedBox(
            height: 30,
          ),
          CustomTextField(
            onChange: (val) => controller.loginModel.value.password,
            heading: 'Password',
            title: 'Enter your password',
          ),
          SizedBox(
            height: 330.h,
          ),
          Obx(() => controller.isBusy == true
              ? Center(child: CircularProgressIndicator())
              : AppButton(
                  title: 'Continue',
                  onTap: () {
                    controller.login();
                  }))
        ],
      ),
    );
  }
}
