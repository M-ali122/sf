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
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sf_app/helper/view/Appbutton.dart';
import 'package:sf_app/registration/view/otp_screen.dart';
import 'package:sf_app/resources/icon/icon.dart';
import 'package:sf_app/resources/icon/svgs.dart';
import 'package:sf_app/resources/theme/main_theme.dart';

import '../../helper/view/progress_bar.dart';
import '../../helper/view/textfield.dart';

class RegistrationForm extends GetWidget {
  static String route = 'RegistrationForm';

  Widget build(BuildContext context) {
    final theme = Get.theme;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            children: [
              SizedBox(height: 25.h),
              Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: SvgPicture.string(icon.backIcon)),
                  const SizedBox(width: 50),
                  const Expanded(
                    child: CustomeProgressBar(
                      progressValue: 0.04,
                    ),
                  ),
                  const SizedBox(width: 50),
                ],
              ),
              SizedBox(height: 30.h),
              Text(
                'Fill the information below',
                 style: theme.textTheme.headline4,
              ),
              SizedBox(height: 30.h,),
              const CustomTextField(
                heading: 'Full Name',
                title: 'Write Here',
              ),
              SizedBox(height: 15.h,),
              const CustomTextField(
                heading: 'User Name',
                title: 'Write Here',
              ),
              SizedBox(height: 15.h,),
              const CustomTextField(
                heading: 'Email',
                title: 'Write Here',
              ),
              SizedBox(height: 15.h,),
              const CustomTextField(
                heading: 'Phone Number',
                title: 'Write Here',
              ),
              SizedBox(height: 15.h,),
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
