// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// class MainTheme {
//   ThemeData get theme => ThemeData(
//         primaryColor: Colors.blue,
//         textTheme:
//             Typography.englishLike2018.apply(fontSizeFactor: 1.sp).copyWith(
//                 headline1: const TextStyle(fontSize: 48, fontWeight: FontWeight.w700),
//                 headline2: const TextStyle(fontWeight: FontWeight.w700, fontSize: 40,),
//                 headline3: const TextStyle(
//                   fontSize: 32,
//                   fontWeight: FontWeight.w700,
//                 ),
//                 headline4: const TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
//                 headline5: const TextStyle(fontSize: 24, fontWeight: FontWeight.w400,color: Color(0xff9E9E9E)),
//                 headline6: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
//                 bodyLarge: const TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.w700,
//                 ),
//                 bodyMedium: const TextStyle(
//                   fontWeight: FontWeight.w700,
//                   fontSize: 14,
//                   letterSpacing: 0.2,
//                 ),
//                 bodySmall: const TextStyle(
//                   fontSize: 12,
//                   fontWeight: FontWeight.w700,
//                   letterSpacing: 0.2,
//                 )),
//       );
// }


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/resources/color/app_color.dart';

class MainTheme {
  ThemeData get theme => ThemeData(
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: AppColor.white,
    textTheme:
    Typography.englishLike2018.apply(fontSizeFactor: 1.sp).copyWith(
      headline1:  GoogleFonts.urbanist(fontSize: 24, fontWeight: FontWeight.w700),
      headline2:  TextStyle(fontSize: 60, fontWeight: FontWeight.w700),
      headline3:  TextStyle(fontSize: 48, fontWeight: FontWeight.w700),
      headline4:  TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
      headline5:  TextStyle(fontSize: 24, fontWeight: FontWeight.w400,color: AppColor.GreyScale500),
      headline6:  TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
      subtitle1:  GoogleFonts.mulish(fontSize: 16,
        color: AppColor.GreyScale500, fontWeight: FontWeight.w500,),
      subtitle2:  GoogleFonts.mulish(fontSize: 14, fontWeight: FontWeight.w600),
      bodyText1:  GoogleFonts.mulish(fontSize: 16, fontWeight: FontWeight.w700),
      bodyText2:  GoogleFonts.mulish(fontSize: 18, fontWeight: FontWeight.w400,color:AppColor.GreyScale700),
      button:  TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
      caption:  TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
      // overline: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
      overline: GoogleFonts.mulish(fontSize: 18, fontWeight: FontWeight.w500),
    ),
  );
}
