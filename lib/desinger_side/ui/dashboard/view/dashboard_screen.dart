import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/desinger_side/ui/dashboard/view/product_gallery.dart';
import 'package:sf_app/helper/extensions/spacings.dart';
import 'package:sf_app/helper/view/Appbutton.dart';
import 'package:sf_app/client_side_design/message/view/inbox.dart';
import 'package:sf_app/client_side_design/order/view/order_detail_tabs.dart';
import 'package:sf_app/resources/color/app_color.dart';
import 'package:sf_app/resources/icon/icon.dart';
import 'package:sf_app/resources/icon/svgs.dart';

class DesignerDashbaord extends StatelessWidget {
  static String route = 'DesignerDashbaord';
  const DesignerDashbaord({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Get.theme;
    return Scaffold(
      body: Container(
        height: 836.h,
        width: Get.width,
        decoration: BoxDecoration(
          gradient: AppColor.mainGradient,
        ),
        child: Stack(
          children: [
            Positioned(
              left: 321.69.w,
              child: SvgPicture.string(Svgs.designerhalfCircle),
            ),
            Padding(
              padding: EdgeInsets.only(top: 68.0.h),
              child: ListTile(
                contentPadding: const EdgeInsets.only(right: 24),
                leading: const CircleAvatar(
                  radius: 48,
                  foregroundImage: AssetImage('assets/designerProfile.png'),
                ),
                horizontalTitleGap: 3,
                title: Text(
                  'Welcome Back',
                  style: GoogleFonts.mulish(
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp,
                      color: AppColor.white),
                ),
                subtitle: Text(
                  'User Name',
                  style: GoogleFonts.mulish(
                      fontWeight: FontWeight.w700,
                      fontSize: 20.sp,
                      color: AppColor.white),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: SvgPicture.string(
                        Appicons.folderBorder,
                        color: AppColor.white,
                      ),
                    ),
                    SizedBox(width: 10.h),
                    GestureDetector(
                      onTap: () {Get.to(Inbox());},
                      child: SvgPicture.string(
                        Appicons.chatBorderwithbadge,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 159.h,
              left: 24.w,
              child: SvgPicture.string(Svgs.divider),
            ),
            Positioned(
              top: 160.h,
              left: 24.w,
              child: SizedBox(
                height: 110.h,
                width: 380.w,
                child: Column(
                  children: [
                    Text(
                      '2,375 SAR',
                      style: GoogleFonts.mulish(
                          fontWeight: FontWeight.w700,
                          fontSize: 48,
                          color: AppColor.white),
                    ),
                    Text(
                      'Total Sales',
                      style: GoogleFonts.mulish(
                          fontWeight: FontWeight.w500,
                          fontSize: 12.sp,
                          color: AppColor.white),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                top: 207.05.h, child: SvgPicture.string(Svgs.designercircle)),
            Positioned(
              top: 273.h,
              left: 24.w,
              child: SizedBox(
                height: 32.h,
                width: 380.w,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '1D',
                        style: GoogleFonts.mulish(
                            fontWeight: FontWeight.w600,
                            fontSize: 14.sp,
                            color: AppColor.white),
                      ),
                      Text(
                        '1W',
                        style: GoogleFonts.mulish(
                            fontWeight: FontWeight.w600,
                            fontSize: 14.sp,
                            color: AppColor.white),
                      ),
                      Container(
                        height: 32.h,
                        width: 41.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: AppColor.secondaryColor500),
                        child: Center(
                          child: Text(
                            '1M',
                            style: GoogleFonts.mulish(
                                fontWeight: FontWeight.w600,
                                fontSize: 14.sp,
                                color: AppColor.white),
                          ),
                        ),
                      ),
                      Text(
                        '3M',
                        style: GoogleFonts.mulish(
                            fontWeight: FontWeight.w600,
                            fontSize: 14.sp,
                            color: AppColor.white),
                      ),
                      Text(
                        '1Y',
                        style: GoogleFonts.mulish(
                            fontWeight: FontWeight.w600,
                            fontSize: 14.sp,
                            color: AppColor.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            /// white conatiner
            Positioned(
              top: 320.h,
              child: Container(
                height: 629.h,
                width: Get.width,
                // padding: const EdgeInsets.symmetric(horizontal: 24),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                  color: AppColor.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Text(
                        'Month Stats',
                        style: theme.textTheme.titleLarge,
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Row(
                        children: [
                          Container(
                            height: 52.h,
                            width: 52.w,
                            decoration: const ShapeDecoration(
                                shape: CircleBorder(),
                                color: Color.fromRGBO(201, 179, 114, 0.1)),
                            child: Center(
                              child: SvgPicture.string(
                                Appicons.document,
                                color: AppColor.secondaryColor500,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          RichText(
                            text: TextSpan(
                              style: GoogleFonts.mulish(
                                fontSize: 14.0.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColor.Dark1,
                              ),
                              // ignore: prefer_const_literals_to_create_immutables
                              children: <TextSpan>[
                                const TextSpan(text: 'Orders'),
                                TextSpan(
                                    text: '\n04',
                                    style: GoogleFonts.mulish(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18.sp,
                                        height: 1.6)),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Container(
                            height: 52.h,
                            width: 52.w,
                            decoration: const ShapeDecoration(
                                shape: CircleBorder(),
                                color: Color.fromRGBO(201, 179, 114, 0.1)),
                            child: Center(
                              child: SvgPicture.string(
                                Appicons.eyesicon,
                                color: AppColor.secondaryColor500,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.toNamed(ProductGallery.route);
                            },
                            child: RichText(
                              text: TextSpan(
                                style: GoogleFonts.mulish(
                                  fontSize: 14.0.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.Dark1,
                                ),
                                // ignore: prefer_const_literals_to_create_immutables
                                children: <TextSpan>[
                                  const TextSpan(text: 'Product views '),
                                  TextSpan(
                                      text: '\n220',
                                      style: GoogleFonts.mulish(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 18.sp,
                                          height: 1.6)),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Row(
                        children: [
                          Container(
                            height: 52.h,
                            width: 52.w,
                            decoration: const ShapeDecoration(
                                shape: CircleBorder(),
                                color: Color.fromRGBO(201, 179, 114, 0.1)),
                            child: Center(
                              child: SvgPicture.string(
                                Appicons.personplus,
                                color: AppColor.secondaryColor500,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          RichText(
                            text: TextSpan(
                              style: GoogleFonts.mulish(
                                fontSize: 14.0.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColor.Dark1,
                              ),
                              // ignore: prefer_const_literals_to_create_immutables
                              children: <TextSpan>[
                                const TextSpan(text: 'Followers'),
                                TextSpan(
                                    text: '\n550',
                                    style: GoogleFonts.mulish(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18.sp,
                                        height: 1.6)),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Container(
                            height: 52.h,
                            width: 52.w,
                            decoration: const ShapeDecoration(
                                shape: CircleBorder(),
                                color: Color.fromRGBO(201, 179, 114, 0.1)),
                            child: Center(
                              child: SvgPicture.string(
                                Appicons.threeUser,
                                color: AppColor.secondaryColor500,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          RichText(
                            text: TextSpan(
                              style: GoogleFonts.mulish(
                                fontSize: 14.0.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColor.Dark1,
                              ),
                              // ignore: prefer_const_literals_to_create_immutables
                              children: <TextSpan>[
                                const TextSpan(text: 'Engagements '),
                                TextSpan(
                                    text: '\n60',
                                    style: GoogleFonts.mulish(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18.sp,
                                        height: 1.6)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    30.height,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Text(
                        'Active Orders',
                        style: GoogleFonts.mulish(
                            fontWeight: FontWeight.w700,
                            fontSize: 20.sp,
                            color: AppColor.Dark1),
                      ),
                    ),
                    SizedBox(
                      height: 300.h,
                      child: ListView(
                        shrinkWrap: true,
                        padding: EdgeInsets.only(bottom: 0, top: 20),
                        children: [
                          Container(
                            height: 170.h,
                            width: 380.w,
                            padding: EdgeInsets.symmetric(horizontal: 24),
                            decoration: const BoxDecoration(boxShadow: [
                              BoxShadow(
                                  blurRadius: 60,
                                  offset: Offset(0, 4),
                                  spreadRadius: 0,
                                  color: Color.fromRGBO(4, 6, 15, 0.05))
                            ]),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(32),
                                color: AppColor.white,
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 33.h,
                                    left: 20.w,
                                    child: Container(
                                      height: 102.h,
                                      width: 120.w,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          color: AppColor.backGroundSilver),
                                      child: Center(
                                        child: Image.asset('assets/shoe.png'),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 150.w,
                                    top: 20.h,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Product Name',
                                          style: theme.textTheme.labelLarge,
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Text(
                                          'Client Name',
                                          style: theme.textTheme.bodySmall,
                                        ),
                                         SizedBox(
                                          height: 10.h,
                                        ),
                                        Container(
                                          height: 25.h,
                                          width: 60.w,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                              color: const Color.fromRGBO(
                                                  250, 204, 21, 0.08)),
                                          child: Center(
                                            child: Text(
                                              'Pending',
                                              style: GoogleFonts.mulish(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 10.sp,
                                                  color: AppColor
                                                      .secondaryColor500),
                                            ),
                                          ),
                                        ),
                                         SizedBox(
                                          height: 10.h,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              '44.00 SAR',
                                              style: theme.textTheme.bodyLarge,
                                            ),
                                          SizedBox(
                                              width: 10.w,
                                            ),
                                            AppButton(
                                              title: 'See detail',
                                              onTap: () {
                                                // Get.toNamed(OrderTabbarScreen.route);
                                              },
                                              width: 100.w,
                                              height: 32.h,
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Container(
                            height: 170.h,
                            width: 380.w,
                            padding: EdgeInsets.symmetric(horizontal: 24),
                            decoration: const BoxDecoration(boxShadow: [
                              BoxShadow(
                                  blurRadius: 60,
                                  offset: Offset(0, 4),
                                  spreadRadius: 0,
                                  color: Color.fromRGBO(4, 6, 15, 0.05))
                            ]),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(32),
                                color: AppColor.white,
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 33.h,
                                    left: 20.w,
                                    child: Container(
                                      height: 102.h,
                                      width: 120.w,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          color: AppColor.backGroundSilver),
                                      child: Center(
                                        child: Image.asset('assets/shoe.png'),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 150.w,
                                    top: 20.h,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Product Name',
                                          style: theme.textTheme.labelLarge,
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Text(
                                          'Client Name',
                                          style: theme.textTheme.bodySmall,
                                        ),
                                         SizedBox(
                                          height: 10.h,
                                        ),
                                        Container(
                                          height: 25.h,
                                          width: 60.w,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                              color: const Color.fromRGBO(
                                                  250, 204, 21, 0.08)),
                                          child: Center(
                                            child: Text(
                                              'Pending',
                                              style: GoogleFonts.mulish(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 10.sp,
                                                  color: AppColor
                                                      .secondaryColor500),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              '44.00 SAR',
                                              style: theme.textTheme.bodyLarge,
                                            ),
                                             SizedBox(
                                              width: 10.h,
                                            ),
                                            AppButton(
                                              title: 'See detail',
                                              onTap: () {
                                                // Get.toNamed(OrderTabbarScreen.route);
                                              },
                                              width: 100.w,
                                              height: 32.h,
                                            )
                                          ],
                                        ),
                                         SizedBox(width: 10.h),
                                        AppButton(
                                          title: 'See detail',
                                           onTap: (){
                                            Get.toNamed(OrderTabbarScreen.route);
                                           },
                                           width: 100.w,
                                           height: 32.h,
                                           )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          100.height,
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
