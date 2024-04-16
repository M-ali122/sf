import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/helper/extensions/spacings.dart';
import 'package:sf_app/helper/view/doubled_outline_button.dart';
import 'package:sf_app/resources/color/app_color.dart';
import 'package:sf_app/resources/icon/icon.dart';
import 'package:sf_app/resources/icon/svgs.dart';

class DesignerProfile extends StatefulWidget {
  DesignerProfile({super.key});

  @override
  State<DesignerProfile> createState() => _DesignerProfileState();
}

class _DesignerProfileState extends State<DesignerProfile> {
  final theme = Get.theme;
  String selectedOption = 'Posts';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: SizedBox(
          height: Get.height,
          width: Get.width,
          child: Stack(
            children: [
              Positioned(
                top: -6.h,
                child: Image.asset(
                  'assets/designerPageImage.png',
                  height: 290.h,
                  width: Get.width,
                ),
              ),
              Positioned(
                top: -6.h,
                child: Container(
                  height: 290.h, width: Get.width,
                  color:
                      Colors.black.withOpacity(0.3), // Adjust opacity as needed
                ),
              ),
              Positioned(
                top: 68.h,
                left: 24.w,
                child: SizedBox(
                  height: 48.h,
                  width: 380.w,
                  child: Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: SvgPicture.string(
                            Appicons.backIcon,
                            color: AppColor.white,
                          )),
                      const Spacer(),
                      // SvgPicture.string(Appicons.moresquareBorder,color: AppColor.white,),
                      PopupMenuButton(
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
                                SvgPicture.string(Appicons.closesquareBorder),
                                const SizedBox(
                                  width: 20,
                                ),
                                const Text('Block designer'),
                              ],
                            ),
                          ),
                          PopupMenuItem(
                            value: 'option1',
                            child: Row(
                              children: [
                                SvgPicture.string(Appicons.chatBorder),
                                const SizedBox(
                                  width: 20,
                                ),
                                const Text('Message designer'),
                              ],
                            ),
                          ),
                        ],
                        onSelected: (value) {
                          // Handle selection
                          print('Selected: $value');
                        },
                        child: SvgPicture.string(
                          Appicons.moresquareBorder,
                          color: AppColor.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 210.h,
                left: 294.w,
                child: Container(
                  height: 110.h,
                  width: 110.w,
                  decoration: const ShapeDecoration(
                      shape: CircleBorder(),
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/designerProfile.png',
                          ),
                          fit: BoxFit.cover)),
                ),
              ),
              30.height,
              Positioned(
                top: 210.h,
                left: 294.w,
                child: Container(
                  height: 110.h,
                  width: 110.w,
                  decoration: const ShapeDecoration(
                      shape: CircleBorder(),
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/designerProfile.png',
                          ),
                          fit: BoxFit.cover)),
                ),
              ),
              30.height,
              Positioned(
                top: 315.h,
                left: 24.w,
                child: SizedBox(
                  height: 200.h,
                  width: 380.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Sabri Bou', style: theme.textTheme.headline6),
                      10.height,
                      Text('My bio is my bio',
                          style: GoogleFonts.mulish(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: AppColor.Dark1)),
                      10.height,
                      Text('@sab_bou',
                          style: GoogleFonts.mulish(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: AppColor.Dark1)),
                      10.height,
                      Row(
                        children: [
                          Container(
                            height: 38.h,
                            width: 120.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              gradient: AppColor.mainGradient,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.string(
                                  Appicons.personplus,
                                  color: AppColor.white,
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Text(
                                  'Follow',
                                  style: GoogleFonts.mulish(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: AppColor.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          11.width,
                          Container(
                            width: 40.h,
                            height: 40.h,
                            decoration: const ShapeDecoration(
                                shape: CircleBorder(),
                                color: AppColor.secondaryColor100),
                            child: Center(
                              child: SvgPicture.string(
                                Appicons.call,
                                color: AppColor.secondaryColor500,
                              ),
                            ),
                          ),
                          11.width,
                          Container(
                            width: 40.h,
                            height: 40.h,
                            decoration: const ShapeDecoration(
                                shape: CircleBorder(),
                                color: AppColor.secondaryColor100),
                            child: Center(
                              child: SvgPicture.string(
                                Appicons.vector,
                                color: AppColor.secondaryColor500,
                              ),
                            ),
                          ),
                          11.width,
                          Container(
                            width: 40.h,
                            height: 40.h,
                            decoration: const ShapeDecoration(
                                shape: CircleBorder(),
                                color: AppColor.secondaryColor100),
                            child: Center(
                              child: SvgPicture.string(
                                Appicons.facebook,
                                color: AppColor.secondaryColor500,
                              ),
                            ),
                          ),
                          11.width,
                          Container(
                            width: 40.h,
                            height: 40.h,
                            decoration: const ShapeDecoration(
                                shape: CircleBorder(),
                                color: AppColor.secondaryColor100),
                            child: Center(
                              child: SvgPicture.string(
                                Appicons.instragram,
                                color: AppColor.secondaryColor500,
                              ),
                            ),
                          ),
                          11.width,
                          Container(
                            width: 40.h,
                            height: 40.h,
                            decoration: const ShapeDecoration(
                                shape: CircleBorder(),
                                color: AppColor.secondaryColor100),
                            child: Center(
                              child: SvgPicture.string(
                                Appicons.laptop,
                                color: AppColor.secondaryColor500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              15.height,
              Positioned(
                top: 475.h,
                left: 24.w,
                child: Container(
                  height: 70.h,
                  width: 380.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            '10',
                            style: GoogleFonts.mulish(
                                fontWeight: FontWeight.w700,
                                fontSize: 24.sp,
                                color: AppColor.black),
                          ),
                          Text(
                            'Following',
                            style: GoogleFonts.mulish(
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp,
                              color: const Color.fromRGBO(66, 66, 66, 1),
                            ),
                          ),
                        ],
                      ),
                      // SizedBox(width: 20.w,),
                      SvgPicture.string(Svgs.verticalDivider),
                      Column(
                        children: [
                          Text(
                            '4.8',
                            style: GoogleFonts.mulish(
                                fontWeight: FontWeight.w700,
                                fontSize: 24.sp,
                                color: AppColor.black),
                          ),
                          Text(
                            'Rating',
                            style: GoogleFonts.mulish(
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp,
                              color: const Color.fromRGBO(66, 66, 66, 1),
                            ),
                          ),
                        ],
                      ),
                      // SizedBox(width: 20.w,),
                      SvgPicture.string(Svgs.verticalDivider),
                      Column(
                        children: [
                          Text(
                            '60',
                            style: GoogleFonts.mulish(
                                fontWeight: FontWeight.w700,
                                fontSize: 24.sp,
                                color: AppColor.black),
                          ),
                          Text(
                            'Followers',
                            style: GoogleFonts.mulish(
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp,
                              color: const Color.fromRGBO(66, 66, 66, 1),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 560.h,
                left: 24.w,
                child: DoubledOutlineButton(
                  onIndexChanged: (value) {
                    // setState(() {
                    //   selectedOption = value.toString();
                    // });
                  },
                  titleOne: 'Posts',
                  titleTwo: 'Products',
                ),
              ),
              Positioned(
                top: 636.h,
                left: 24.w,
                child: Row(
                  children: [
                    const Text('14'),
                    SizedBox(
                      width: 10.w,
                    ),
                    Container(
                      height: 1,
                      width: 347,
                      color: const Color.fromRGBO(238, 238, 238, 1),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 640.h,
                left: 0,
                right: 0,
                child: selectedOption == 'Posts'
                    ? Container(
                        height: 350.h,
                        child: ListView(
                          shrinkWrap: true,
                          children: [
                            Container(
                              height: 395.h,
                              width: 370.w,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
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
                                ],
                              ),
                              child: Card(
                                color: AppColor.white,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24),
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(24),
                                    color: AppColor.white,
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5.0),
                                  child: Stack(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 10.0),
                                        child: ListTile(
                                          leading: Container(
                                            height: 48.h,
                                            width: 48.w,
                                            decoration: const ShapeDecoration(
                                                shape: CircleBorder(),
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        'assets/designerProfile.png'),
                                                    fit: BoxFit.cover)),
                                          ),
                                          title: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5.0),
                                            child: Text(
                                              'User Name',
                                              style: theme.textTheme.bodyText1,
                                            ),
                                          ),
                                          subtitle: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5.0),
                                            child: Text(
                                              '11/01/2024',
                                              style: GoogleFonts.mulish(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14),
                                            ),
                                          ),
                                          trailing: PopupMenuButton(
                                            // padding: EdgeInsets.only(right: 10,top: 20),
                                            position: PopupMenuPosition.under,
                                            color: AppColor.white,
                                            shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(20),
                                                bottomRight:
                                                    Radius.circular(20),
                                                bottomLeft: Radius.circular(20),
                                              ),
                                            ),

                                            itemBuilder: (context) => [
                                              PopupMenuItem(
                                                value: 'option1',
                                                child: Row(
                                                  children: [
                                                    SvgPicture.string(Appicons
                                                        .profileBorderplus),
                                                    SizedBox(
                                                      width: 20.w,
                                                    ),
                                                    const Text('Follow user'),
                                                  ],
                                                ),
                                              ),
                                              PopupMenuItem(
                                                value: 'option1',
                                                child: Row(
                                                  children: [
                                                    SvgPicture.string(Appicons
                                                        .bookmarkBorder),
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
                                                    SvgPicture.string(
                                                        Appicons.swapBorder),
                                                    SizedBox(
                                                      width: 20.w,
                                                    ),
                                                    const Text('Share post'),
                                                  ],
                                                ),
                                              ),
                                              PopupMenuItem(
                                                value: 'option1',
                                                child: Row(
                                                  children: [
                                                    SvgPicture.string(Appicons
                                                        .dangertriangleBorder),
                                                    SizedBox(
                                                      width: 20.w,
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
                                            child: SvgPicture.string(
                                                Appicons.moresquareBorder),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 90.0, left: 20, right: 20),
                                        child: RichText(
                                          text: TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                text:
                                                    'Great event with the fashion store today it was really a pleasure ',
                                                style: GoogleFonts.mulish(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14.sp,
                                                    color: AppColor.Dark1),
                                              ),
                                              TextSpan(
                                                text: 'View More ',
                                                style: GoogleFonts.mulish(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 14.sp,
                                                    color: const Color.fromRGBO(
                                                        201, 179, 114, 1)),
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
                                              borderRadius:
                                                  BorderRadius.circular(24),
                                              color: const Color.fromRGBO(
                                                  108, 143, 89, 0.05),
                                              image: const DecorationImage(
                                                  image: AssetImage(
                                                      'assets/community.png'),
                                                  fit: BoxFit.cover)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 100.h,
                            ),
                          ],
                        ),
                      )
                    : SizedBox(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
