// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:sf_app/resources/color/app_color.dart';
// import 'package:sf_app/resources/icon/svgs.dart';

// class CardDesign extends StatelessWidget {
//   static String route = 'CardDesign';
//    CardDesign({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           const SizedBox(height: 20,),
//           Container(
//             height: 395,
//             width: 380,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(24),
//               color: AppColor.white,
//               ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:sf_app/resources/color/app_color.dart';
// import 'package:sf_app/resources/icon/svgs.dart';

// class CardDesign extends StatelessWidget {
//   static String route = 'CardDesign';
//    CardDesign({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           const SizedBox(height: 20,),
//           Container(
//             height: 395,
//             width: 380,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(24),
//               color: AppColor.white,
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.grey.withOpacity(0.5),
//                   spreadRadius: 5,
//                   blurRadius: 7,
//                   offset: Offset(0, 3), // changes position of shadow
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/resources/color/app_color.dart';
import 'package:sf_app/resources/icon/icon.dart';
import 'package:sf_app/resources/icon/svgs.dart';

class CardDesign extends StatelessWidget {
  static String route = 'CardDesign';
  CardDesign({super.key});

  final theme = Get.theme;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 30,
          ),
          Card(
            elevation: 6,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            child: Container(
              height: 395,
              width: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: AppColor.white,
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(4, 6, 15, 0.08),
                    spreadRadius: 0,
                    blurRadius: 60,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: ListTile(
                        leading: Container(
                          height: 48,
                          width: 48,
                          decoration: const ShapeDecoration(
                              shape: CircleBorder(),
                              image: DecorationImage(
                                  image: AssetImage('assets/profile.png'),
                                  fit: BoxFit.cover)),
                        ),
                        title: Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text(
                            'User Name',
                            style: theme.textTheme.bodyText1,
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text(
                            '3 Hours ago',
                            style: GoogleFonts.mulish(
                                fontWeight: FontWeight.w400, fontSize: 14),
                          ),
                        ),
                        trailing: SvgPicture.string(Appicons.moresquareBorder),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 90.0, left: 20, right: 20),
                      child: RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text:
                                  'Great event with the fashion store today it was really a pleasure ',
                              style: GoogleFonts.mulish(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: AppColor.Dark1),
                            ),
                            TextSpan(
                              text: 'View More ',
                              style: GoogleFonts.mulish(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                  color: Color.fromRGBO(201, 179, 114, 1)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 150.0, left: 15, right: 15),
                      child: Container(
                        height: 196.h,
                        width: 348.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: Color.fromRGBO(108, 143, 89, 0.05),
                            image: DecorationImage(
                                image: AssetImage('assets/community.png'),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 325.0, right: 15, left: 15),
                      child: Container(
                        height: 48,
                        width: 348,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          gradient: LinearGradient(colors: [
                            Color.fromRGBO(153, 153, 153, 0.4),
                            Color.fromRGBO(202, 202, 202, 0.4),
                          ]),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 14),
                              hintText: 'Say Something...',
                              hintStyle: GoogleFonts.mulish(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: AppColor.white),
                              border: OutlineInputBorder(),
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              // suffixIcon: SvgPicture.string(Appicons.emoji,height: 10,width: 10,fit: BoxFit.cover,)
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 20,),
          Card(
            elevation: 6,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            child: Container(
              height: 395,
              width: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: AppColor.white,
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(4, 6, 15, 0.08),
                    spreadRadius: 0,
                    blurRadius: 60,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: ListTile(
                        leading: Container(
                          height: 48,
                          width: 48,
                          decoration: const ShapeDecoration(
                              shape: CircleBorder(),
                              image: DecorationImage(
                                  image: AssetImage('assets/profile.png'),
                                  fit: BoxFit.cover)),
                        ),
                        title: Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text(
                            'User Name',
                            style: theme.textTheme.bodyText1,
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text(
                            '3 Hours ago',
                            style: GoogleFonts.mulish(
                                fontWeight: FontWeight.w400, fontSize: 14),
                          ),
                        ),
                        trailing: SvgPicture.string(Appicons.moresquareBorder),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 90.0, left: 20, right: 20),
                      child: RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text:
                                  'Great event with the fashion store today it was really a pleasure ',
                              style: GoogleFonts.mulish(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: AppColor.Dark1),
                            ),
                            TextSpan(
                              text: 'View More ',
                              style: GoogleFonts.mulish(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                  color: Color.fromRGBO(201, 179, 114, 1)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 150.0, left: 15, right: 15),
                      child: Container(
                        height: 196.h,
                        width: 348.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: Color.fromRGBO(108, 143, 89, 0.05),
                            image: DecorationImage(
                                image: AssetImage('assets/community.png'),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 325.0, right: 15, left: 15),
                      child: Container(
                        height: 48,
                        width: 348,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          gradient: LinearGradient(colors: [
                            Color.fromRGBO(153, 153, 153, 0.4),
                            Color.fromRGBO(202, 202, 202, 0.4),
                          ]),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 14),
                              hintText: 'Say Something...',
                              hintStyle: GoogleFonts.mulish(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: AppColor.white),
                              border: OutlineInputBorder(),
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              // suffixIcon: SvgPicture.string(Appicons.emoji,height: 10,width: 10,fit: BoxFit.cover,)
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
