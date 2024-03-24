import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/pages/community/view/commint.dart';
import 'package:sf_app/resources/color/app_color.dart';
import 'package:sf_app/resources/icon/icon.dart';

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
          Container(
            height: 395,
            width: 380,
            padding: EdgeInsets.symmetric(horizontal: 24),
            decoration: BoxDecoration(



              borderRadius: BorderRadius.circular(24),
              // color: AppColor.white,
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(4, 6, 15, 0.08),
                  spreadRadius: 0,
                  blurRadius: 60,
                  offset: Offset(0, 4),
                ),
                BoxShadow(
                  color: Color.fromRGBO(4, 6, 15, 0.08),
                  spreadRadius: 0,
                  blurRadius: 60,
                  offset: Offset(6, 0),
                ),
              ],
            ),
            child: Card(
              color: AppColor.white,
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: AppColor.white,
                ),
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
                        trailing: PopupMenuButton(
                          // padding: EdgeInsets.only(right: 10,top: 20),
                          position: PopupMenuPosition.under,
                          color: AppColor.white,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                          ),
                          
                          itemBuilder: (context) => [
                            PopupMenuItem(
                              value: 'option1',
                              child: Row(
                                children: [
                                  SvgPicture.string(Appicons.profileBorderplus),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Text('Follow user'),
                                ],
                              ),
                            ),
                            PopupMenuItem(
                              value: 'option1',
                              child: Row(
                                children: [
                                  SvgPicture.string(Appicons.bookmarkBorder),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Text('Save post'),
                                ],
                              ),
                            ),
                            PopupMenuItem(
                              value: 'option1',
                              child: Row(
                                children: [
                                  SvgPicture.string(Appicons.swapBorder),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Text('Share post'),
                                ],
                              ),
                            ),
                            PopupMenuItem(
                              value: 'option1',
                              child: Row(
                                children: [
                                  SvgPicture.string(
                                      Appicons.dangertriangleBorder),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Text('Flag post'),
                                ],
                              ),
                            ),
                          ],
                          onSelected: (value) {
                            // Handle selection
                            print('Selected: $value');
                          },
                          child: SvgPicture.string(Appicons.moresquareBorder),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
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
                                  color:
                                      const Color.fromRGBO(201, 179, 114, 1)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 143.0, left: 15, right: 15),
                      child: Container(
                        height: 196.h,
                        width: 348.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: const Color.fromRGBO(108, 143, 89, 0.05),
                            image: const DecorationImage(
                                image: AssetImage('assets/community.png'),
                                fit: BoxFit.cover)
                                ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 315.0, right: 15, left: 15),
                      child: Container(
                        height: 48,
                        width: 348,
                        decoration: BoxDecoration(
                          gradient: RadialGradient(
                              colors: [
                                Color.fromRGBO(153, 153, 153, 0.9),
                                Color.fromRGBO(202, 202, 202, 0.9 ),
                              ]
                              ),
                              borderRadius: BorderRadius.circular(16),
                        ),
                        
                        child: GestureDetector(
                           onTap: (){
                            Get.to(CommintScreen());
                           },
                          child: Image.asset('assets/Actions.png')),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 395,
            width: 380,
            padding: EdgeInsets.symmetric(horizontal: 24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              // color: AppColor.white,
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(4, 6, 15, 0.08),
                  spreadRadius: 0,
                  blurRadius: 60,
                  offset: Offset(0, 4),
                ),
                BoxShadow(
                  color: Color.fromRGBO(4, 6, 15, 0.08),
                  spreadRadius: 0,
                  blurRadius: 60,
                  offset: Offset(6, 0),
                ),
              ],
            ),
            child: Card(
              color: AppColor.white,
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: AppColor.white,
                ),
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
                                  image: AssetImage('assets/profile2.png'),
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
                        trailing: PopupMenuButton(
                          // padding: EdgeInsets.only(right: 10,top: 20),
                          position: PopupMenuPosition.under,
                          color: AppColor.white,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                          ),
                          
                          itemBuilder: (context) => [
                            PopupMenuItem(
                              value: 'option1',
                              child: Row(
                                children: [
                                  SvgPicture.string(Appicons.profileBorderplus),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Text('Follow user'),
                                ],
                              ),
                            ),
                            PopupMenuItem(
                              value: 'option1',
                              child: Row(
                                children: [
                                  SvgPicture.string(Appicons.bookmarkBorder),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Text('Save post'),
                                ],
                              ),
                            ),
                            PopupMenuItem(
                              value: 'option1',
                              child: Row(
                                children: [
                                  SvgPicture.string(Appicons.swapBorder),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Text('Share post'),
                                ],
                              ),
                            ),
                            PopupMenuItem(
                              value: 'option1',
                              child: Row(
                                children: [
                                  SvgPicture.string(
                                      Appicons.dangertriangleBorder),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Text('Flag post'),
                                ],
                              ),
                            ),
                          ],
                          onSelected: (value) {
                            // Handle selection
                            print('Selected: $value');
                          },
                          child: SvgPicture.string(Appicons.moresquareBorder),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 90.0, left: 20, right: 20),
                      child: RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text:
                                  'The new air jordan is wild.',
                              style: GoogleFonts.mulish(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: AppColor.Dark1),
                            ),
                            TextSpan(
                              text: '#Nike ',
                              style: GoogleFonts.mulish(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                  color:
                                      const Color.fromRGBO(201, 179, 114, 1)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 130.0, left: 15, right: 15),
                      child: Container(
                        height: 196.h,
                        width: 348.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: const Color.fromRGBO(108, 143, 89, 0.05),
                            image: const DecorationImage(
                                image: AssetImage('assets/community.png'),
                                fit: BoxFit.cover)
                                ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 305.0, right: 15, left: 15),
                      child: Container(
                        height: 48,
                        width: 348,
                        decoration: BoxDecoration(
                          gradient: RadialGradient(
                              colors: [
                                Color.fromRGBO(153, 153, 153, 0.9),
                                Color.fromRGBO(202, 202, 202, 0.9 ),
                              ]
                              ),
                              borderRadius: BorderRadius.circular(16),
                        ),
                        
                        child: GestureDetector(
                           onTap: (){
                            Get.to(CommintScreen());
                           },
                          child: Image.asset('assets/Actions.png')),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 30,),
        ],
      ),
    );
  }
}
