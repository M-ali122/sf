import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/resources/color/app_color.dart';

class MainTheme {
  ThemeData get theme => ThemeData(
        primaryColor: AppColor.Dark1,
        primarySwatch: AppColor.primarySwatch,
        secondaryHeaderColor: AppColor.primaryColor400,
        scaffoldBackgroundColor: AppColor.white,
        fontFamily: GoogleFonts.mulish().fontFamily,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColor.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          foregroundColor: Colors.black,
        ),
        bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: AppColor.white,
        ),
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: GoogleFonts.mulish(
            color: AppColor.GreyScale500,
            fontWeight: FontWeight.w400,
            fontSize: 24,
          ),
          enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: AppColor.GreyScale500)),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColor.secondaryColor400),
          ),
          iconColor: const Color(0xffB0B0B0),
        ),
// <<<<<<< HEAD
//         textTheme: Typography.englishLike2018
//             .apply(fontSizeFactor: 1.sp)
//             .copyWith(
//               // ignore: deprecated_member_use
//               headline1:
//                   GoogleFonts.mulish(fontSize: 24, fontWeight: FontWeight.w700),
//               headline2: GoogleFonts.urbanist(
//                   fontSize: 18, fontWeight: FontWeight.w600),
//               headline3:
//                   const TextStyle(fontSize: 48, fontWeight: FontWeight.w700),
//               headline4:
//                   GoogleFonts.mulish(fontSize: 30, fontWeight: FontWeight.w700),
//               headline5: GoogleFonts.mulish(
//                 fontSize: 14,
//                 fontWeight: FontWeight.w700,
//               ),
//               headline6:
//                   GoogleFonts.mulish(fontSize: 20, fontWeight: FontWeight.w700),

//               subtitle1: GoogleFonts.mulish(
//                 fontSize: 16,
//                 color: AppColor.GreyScale500,
//                 fontWeight: FontWeight.w500,
//               ),
//               subtitle2:
//                   GoogleFonts.mulish(fontSize: 14, fontWeight: FontWeight.w600),
//               // bodySmall:GoogleFonts.mulish(fontSize: 14, fontWeight: FontWeight.w500) ,
//               bodyText1:
//                   GoogleFonts.mulish(fontSize: 16, fontWeight: FontWeight.w700),
//               bodyText2: GoogleFonts.mulish(
//                   fontSize: 18,
//                   fontWeight: FontWeight.w400,
//                   color: AppColor.GreyScale700),
//               button:
//                   GoogleFonts.mulish(fontSize: 18, fontWeight: FontWeight.w700),
//               caption:
//                   GoogleFonts.mulish(fontSize: 12, fontWeight: FontWeight.w400),
//               // overline: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
//               overline:
//                   GoogleFonts.mulish(fontSize: 18, fontWeight: FontWeight.w500),
//             ),
        switchTheme: SwitchThemeData(
          // Customize switch button colors here
          thumbColor: MaterialStateProperty.resolveWith<Color>((states) {
            if (states.contains(MaterialState.selected)) {
              return Colors.white; // Color when switch is ON
            }
            return Colors.white; // Color when switch is OFF
          }),
          trackColor: MaterialStateProperty.resolveWith<Color>((states) {
            if (states.contains(MaterialState.selected)) {
              return Color.fromRGBO(
                  71, 87, 54, 1); // Color of the track when switch is ON
            }
            return Color.fromRGBO(
                71, 87, 54, 70); // Color of the track when switch is OFF
          }),
          // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
// =======
        textTheme:
            Typography.englishLike2018.apply(fontSizeFactor: 1.sp).copyWith(
                  // ignore: deprecated_member_use
                  headline1: GoogleFonts.mulish(
                      fontSize: 24.sp, fontWeight: FontWeight.w700),
                  headline2: GoogleFonts.urbanist(
                      fontSize: 18.sp, fontWeight: FontWeight.w600),
                  headline3:
                      TextStyle(fontSize: 48.sp, fontWeight: FontWeight.w700),
                  headline4: GoogleFonts.mulish(
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                  headline5: GoogleFonts.mulish(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                  ),
                  headline6: GoogleFonts.mulish(
                      fontSize: 20.sp, fontWeight: FontWeight.w700),
                  subtitle1: GoogleFonts.mulish(
                    fontSize: 16.sp,
                    color: AppColor.GreyScale500,
                    fontWeight: FontWeight.w500,
                  ),
                  subtitle2: GoogleFonts.mulish(
                      fontSize: 14.sp, fontWeight: FontWeight.w600),
                  // bodySmall:GoogleFonts.mulish(fontSize: 14, fontWeight: FontWeight.w500) ,
                  bodyText1: GoogleFonts.mulish(
                      fontSize: 16.sp, fontWeight: FontWeight.w700),
                  bodyText2: GoogleFonts.mulish(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColor.GreyScale700),
                  button: GoogleFonts.mulish(
                      fontSize: 18.sp, fontWeight: FontWeight.w700),
                  caption: GoogleFonts.mulish(
                      fontSize: 12.sp, fontWeight: FontWeight.w400),
                  // overline: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  overline: GoogleFonts.mulish(
                      fontSize: 18.sp, fontWeight: FontWeight.w500),

// <<<<<<< HEAD
//               // bodyLarge: GoogleFonts.mulish(fontWeight: FontWeight.w700,fontSize: 14,)
                ),
// >>>>>>> 46786bc76c94369d842645fd073a9b6f18d3e669
      );
}
