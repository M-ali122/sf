import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/client_side_design/auth/controllers/login_controller.dart';
import 'package:sf_app/helper/extensions/spacings.dart';
import 'package:sf_app/helper/view/Appbutton.dart';
import 'package:sf_app/helper/view/custome_textfield.dart';
import 'package:sf_app/helper/view/loading.dart';

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
        padding:  EdgeInsets.symmetric(horizontal: 24.w),
        children: [
          SizedBox(
            height: 170.h,
          ),
          CustomTextField(
            // controller: userc,
            onChange: (val) => controller.loginModel.value.email = val,

            heading: 'Email',
            title: 'Enter your email',
          ),
           SizedBox(
            height: 30.h,
          ),
          CustomTextField(
            onChange: (val) => controller.loginModel.value.password = val,
            heading: 'Password',
            title: 'Enter your password',
          ),
          5.height,
          Text('forget password ?',
          textAlign: TextAlign.end,
          style: GoogleFonts.mulish(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600
          ),
          ),
          SizedBox(
            height: Get.height * 0.2,
          ),
          Obx(() => controller.isBusy.isTrue
              ? const Loading()
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
