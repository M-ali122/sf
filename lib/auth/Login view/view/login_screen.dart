import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sf_app/helper/view/Appbutton.dart';
import 'package:sf_app/helper/view/custome_textfield.dart';

class LoginScreen extends StatelessWidget {
  static String route = '/loginscreen';
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          SizedBox(height: 90.h,),
          CustomTextField(
            heading: 'Email',
            title: 'Enter your email',

          ),
          SizedBox(height: 30,),
          CustomTextField(
            heading: 'Password',
            title: 'Enter your password',

          ),
          SizedBox(height: 40,),
          AppButton(title: 'Continue', onTap: (){})
        ],

      ),
    );
  }
}