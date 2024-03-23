// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/resources/icon/icon.dart';

import '../../resources/color/app_color.dart';

class FeedCard extends StatelessWidget {
  final Color? color;

  FeedCard({super.key, this.color});
  final theme = Get.theme;
  @override
  Widget build(BuildContext context) {
    return Card(
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
                  trailing: PopupMenuButton(
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        value: 'option1',
                        child: Row(
                          children: [
                            // SvgPicture.string(Appicons.profileBorderplus),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Follow user'),
                          ],
                        ),
                      ),
                      PopupMenuItem(
                        child: Row(
                          children: [
                            // SvgPicture.string(Appicons.bookmarkBorder),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Save post'),
                          ],
                        ),
                        value: 'option1',
                      ),
                      PopupMenuItem(
                        child: Row(
                          children: [
                            // SvgPicture.string(Appicons.swapBorder),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Share post'),
                          ],
                        ),
                        value: 'option1',
                      ),
                      PopupMenuItem(
                        child: Row(
                          children: [
                            // SvgPicture.string(Appicons.dangertriangleBorder),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Flag post'),
                          ],
                        ),
                        value: 'option1',
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
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 90.0, left: 20, right: 20),
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
                            color: const Color.fromRGBO(201, 179, 114, 1)),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 150.0, left: 15, right: 15),
                child: Container(
                  height: 196,
                  width: 348,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromRGBO(108, 143, 89, 0.05),
                      image: const DecorationImage(
                          image: AssetImage('assets/community.png'),
                          fit: BoxFit.cover)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 335.0, right: 15, left: 15),
                child: Container(
                  height: 48,
                  width: 348,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Image.asset('assets/Actions.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
