import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sf_app/helper/view/Appbutton.dart';
import 'package:sf_app/helper/view/custome_textfield.dart';
import 'package:sf_app/client_side_design/registration/controller/registration_controller.dart';

class RegistrationForm extends GetWidget<RegistrationController> {
  static String route = 'RegistrationForm';
  const RegistrationForm({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              SizedBox(height: 30.h),
              const Text(
                'Fill the information below',
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(33, 33, 33, 1)),
              ),
              SizedBox(
                height: 30.h,
              ),
              const CustomTextField(
                heading: 'Full Name',
                title: 'Write Here',
              ),
              SizedBox(
                height: 45.h,
              ),
              const CustomTextField(
                heading: 'User Name',
                title: 'Write Here',
              ),
              SizedBox(
                height: 45.h,
              ),
              const CustomTextField(
                heading: 'Email',
                title: 'Write Here',
              ),
              SizedBox(
                height: 45.h,
              ),
              const CustomTextField(
                heading: 'Phone Number',
                title: 'Write Here',
              ),
              SizedBox(
                height: 45.h,
              ),
              const CustomTextField(
                heading: 'Bio (optional)',
                title: 'Write Here',
              ),
              SizedBox(
                height: 50.h,
              ),
              AppButton(
                  title: 'Continue',
                  onTap: () async {
                    controller.onRegister();
                  }),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
