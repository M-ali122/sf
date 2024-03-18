// <<<<<<< HEAD
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';
// import 'package:sf_app/resources/icon/icon.dart';
// import 'package:sf_app/resources/icon/svgs.dart';
// import 'package:sf_app/resources/theme/main_theme.dart';
//
// class RegistrationForm extends GetWidget{
//   static String route = 'RegistrationForm';
//
//   Widget build(BuildContext context){
//     return Scaffold(
//       body: SafeArea(
//         child: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 16),
//           child: ListView(
//             children: [
//               SizedBox(height: 10.h,),
//               Row(
//                 children: [
//                   SvgPicture.string(icon.backIcon),
//                   SizedBox(width: 50,),
//                   SvgPicture.string(Svgs.linearProgress),
//                 ],
//               ),
//               SizedBox(height: 30.h,),
//               Text(
//                   'Fill the information below',
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//
//   }
//
// }
// =======
// >>>>>>> 690d6e6b8ae384d496ee4308f9e03b91c1e4f733
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sf_app/helper/view/Appbutton.dart';
import 'package:sf_app/registration/view/otp_screen.dart';
import 'package:sf_app/resources/icon/icon.dart';

import '../../helper/view/progress_bar.dart';
import '../../helper/view/textfield.dart';

class RegistrationForm extends StatelessWidget {
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
              SizedBox(height: 25.h),
              Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: SvgPicture.string(Appicons.backIcon)),
                  const SizedBox(width: 50),
                  const Expanded(
                    child: CustomeProgressBar(
                      progressValue: 0.06,
                    ),
                  ),
                  const SizedBox(width: 50),
                ],
              ),
              SizedBox(height: 30.h),
              const Text(
                'Fill the information below',
                 style: TextStyle(
                   fontSize: 32,
                   fontWeight: FontWeight.w700,
                   color: Color.fromRGBO(33, 33, 33, 1)
                 ),
              ),
              SizedBox(height: 30.h,),
              const CustomTextField(
                heading: 'Full Name',
                title: 'Write Here',
              ),
              SizedBox(height: 45.h,),
              const CustomTextField(
                heading: 'User Name',
                title: 'Write Here',
              ),
          SizedBox(height: 45.h,),
              const CustomTextField(
                heading: 'Email',
                title: 'Write Here',
              ),
              SizedBox(height: 45.h,),
              const CustomTextField(
                heading: 'Phone Number',
                title: 'Write Here',
              ),
              SizedBox(height: 45.h,),
              const CustomTextField(
                heading: 'Bio (optional)',
                title: 'Write Here',
              ),
              SizedBox(height: 50.h,),
              AppButton(
                  title: 'Continue',
                  onTap: (){
                    Get.toNamed(OtpScreen.route);
                  }
              ),
              const SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }
}
