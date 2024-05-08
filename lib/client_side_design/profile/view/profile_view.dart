import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/helper/extensions/spacings.dart';
import 'package:sf_app/helper/view/doubled_outline_button.dart';
import 'package:sf_app/helper/view/feedcard.dart';
import 'package:sf_app/client_side_design/profile/view/setting.dart';
import 'package:sf_app/resources/icon/icon.dart';
import 'package:sf_app/resources/icon/svgs.dart';

class ProfileView extends StatelessWidget {
  ProfileView({super.key});
  final theme = Get.theme;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              10.height,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0.w),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/s_f_logo.png',
                      width: 32.w,
                      height: 36.35.h,
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      'Profile',
                      style: theme.textTheme.displayLarge,
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        Get.to(Settings());
                      },
                      child: SvgPicture.string(
                        Appicons.settingBorder,
                        width: 28.w,
                        height: 28.h,
                      ),
                    )
                  ],
                ),
              ),
               SizedBox(
                height: 20.h,
              ),
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 16.0.h, horizontal: 20.w),
                    child: SvgPicture.string(Svgs.dotedBackgorund),
                  ),
                  Positioned(
                      top: 120.h,
                      left: 0.w,
                      right: 0.w,
                      child: Center(
                          child: Column(
                        children: [
                          20.height,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Full Name",
                                style: theme.textTheme.titleLarge,
                              ),
                              SizedBox(
                                width: 8.w,
                              ),
                              SvgPicture.string(Appicons.varificationIcon),
                            ],
                          ),
                          Text("Your Bio",
                              style: GoogleFonts.mulish(
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                              ))
                        ],
                      ))),
                  Positioned(
                    top: 20.h,
                    right: 0.w,
                    left: 0.w,
                    child: const Center(
                      child: CircleAvatar(
                        radius: 45,
                        backgroundImage: AssetImage('assets/profile.png'),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              DoubledOutlineButton(
                titleOne: 'Saves',
                titleTwo: 'Following',
                onIndexChanged: (value) async {},
              ),
              10.height,
              FeedCard(),
            ],
          ),
        ),
      ),
    );
  }
}
