import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/helper/extensions/spacings.dart';
import 'package:sf_app/helper/view/doubled_outline_button.dart';
import 'package:sf_app/helper/view/feedcard.dart';
import 'package:sf_app/pages/profile/view/setting.dart';
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/s_f_logo.png',
                      width: 32,
                      height: 36.35,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Profile',
                      style: theme.textTheme.headline1,
                    ),
                    Spacer(),
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
                height: 20,
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 20),
                    child: SvgPicture.string(Svgs.dotedBackgorund),
                  ),
                  Positioned(
                      top: 120,
                      left: 0,
                      right: 0,
                      child: Center(
                          child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Full Name",
                                style: theme.textTheme.headline6,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              SvgPicture.string(Appicons.varificationIcon),
                            ],
                          ),
                          Text("Your Bio",
                              style: GoogleFonts.mulish(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ))
                        ],
                      ))),
                  Positioned(
                    top: 20,
                    right: 0,
                    left: 0,
                    child: Center(
                      child: CircleAvatar(
                        radius: 45,
                        backgroundImage: AssetImage('assets/profile.png'),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              DoubledOutlineButton(
                titleOne: 'Saves',
                titleTwo: 'Following',
                onIndexChanged: (value) async{
                  
                },
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
