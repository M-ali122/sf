import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sf_app/helper/view/Appbutton.dart';
import 'package:sf_app/helper/view/custome_textfield.dart';
import 'package:sf_app/client_side_design/registration/controller/registration_controller.dart';
import 'package:sf_app/helper/view/loading.dart';
import 'package:sf_app/helper/view/progress_bar.dart';

class RegistrationForm extends GetWidget<RegistrationController> {
  static String route = 'RegistrationForm';
  const RegistrationForm({super.key});
  @override
  Widget build(BuildContext context) {

    return GetBuilder(
      init: RegistrationController(),
      builder: (controller) {
      return  Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
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
           CustomTextField(
            onChange: (val)=> controller.registration.value.fullname = val,
            heading: 'Full Name',
            title: 'Write Here',
          ),
          SizedBox(
            height: 45.h,
          ),
         CustomTextField(
             onChange: (val)=> controller.registration.value.username = val,
            heading: 'User Name',
            title: 'Write Here',
          ),
          SizedBox(
            height: 45.h,
          ),
        CustomTextField(
             onChange: (val)=> controller.registration.value.email = val,
            heading: 'Email',
            title: 'Write Here',
          ),
          SizedBox(
            height: 45.h,
          ),
         CustomTextField(
             onChange: (val)=> controller.registration.value.phone  = val,
            heading: 'Phone Number',
            title: 'Write Here',
          ),
          SizedBox(
            height: 45.h,
          ),
      CustomTextField(
             onChange: (val)=> controller.registration.value.bio = val,
            heading: 'Bio (optional)',
            title: 'Write Here',
          ),
          SizedBox(
            height: 50.h,
          ),
         controller.isBusy.isTrue ? const Center(child: Loading()) : AppButton(
              title: 'Continue',
              onTap: () async {
                controller.onRegister();
              }),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
    },);
  }
}
