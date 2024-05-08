import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/helper/extensions/spacings.dart';
import 'package:sf_app/client_side_design/categories/screens/new_arival.dart';
import 'package:sf_app/client_side_design/categories/views/top_categories.dart';
import 'package:sf_app/client_side_design/community/view/community_tab_screen.dart';
import 'package:sf_app/client_side_design/community/view/desinger_profile.dart';
import 'package:sf_app/client_side_design/home/dp/designer_static_data.dart';
import 'package:sf_app/client_side_design/order/view/order_screen.dart';
import 'package:sf_app/client_side_design/profile/view/profile_view.dart';
import 'package:sf_app/resources/color/app_color.dart';
import 'package:sf_app/resources/icon/icon.dart';
import 'package:sf_app/resources/icon/svgs.dart';

class HomeScreen extends StatelessWidget {
  static const String route = "HomeScreen";

  HomeScreen({super.key});

  List image = [
    'assets/aubrey.png',
    'assets/darell.png',
    'assets/julie.png',
    'assets/sami.png',
    'assets/brandi.png',
  ];

  List designerName = [
    'Aubrey',
    'Darrell',
    'Julie',
    'Sami',
    'Brandie',
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Get.theme;

    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0.w),
            child: Row(
              children: [
                GestureDetector(
                    onTap: () {
                      Get.to(() => ProfileView());
                    },
                    child: Image.asset('assets/Image.png')),
                16.width,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome Back',
                      style: GoogleFonts.mulish(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          color: AppColor.GreyScale600),
                    ),
                    6.height,
                    Text(
                      'User Name',
                      style: GoogleFonts.mulish(
                        fontWeight: FontWeight.w700,
                        fontSize: 20.sp,
                        color: AppColor.GreyScale900,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                InkWell(
                    onTap: () {
                      Get.to(OrderView());
                    },
                    child: SvgPicture.string(Svgs.shop)),
                SizedBox(width: 20.h),
                GestureDetector(
                  onTap: () {
                    Get.defaultDialog(
                        title: 'ALert',
                        content: Image.asset(
                          'assets/underbuild.png',
                          height: 80.h,
                          width: 60.w,
                        ),
                        actions: [const Text('App Under build')]);
                  },
                  child: SvgPicture.string(Svgs.chat),
                ),
              ],
            ),
          ),
          24.height,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0.w),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                contentPadding: EdgeInsets.symmetric(vertical: 20.h),
                fillColor: AppColor.GreyScale50,
                focusColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white, width: 2.0),
                  borderRadius: BorderRadius.circular(30),
                ),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white, width: 2.0),
                  borderRadius: BorderRadius.circular(30),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white, width: 2.0),
                  borderRadius: BorderRadius.circular(30),
                ),
                prefixIcon: const Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 10),
                  child: Icon(Icons.search,
                      size: 30, color: AppColor.GreyScale400),
                ),
                hintText: 'Search Products, designers',
                hintStyle: const TextStyle(color: AppColor.GreyScale400),
              ),
            ),
          ),
          24.height,
          const TopCategoriesView(),
          // 20.height,
          InkWell(
            onTap: () {
              // Get.to(()=> TopCateries());
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0.w),
              child: GestureDetector(
                onTap: () {
                  Get.to(() => const CommunityTabs());
                },
                child: Row(
                  children: [
                    Text(
                      'Top Designers',
                      style: theme.textTheme.titleLarge,
                    ),
                    const Spacer(),
                    SvgPicture.string(Appicons.arrowforword),
                  ],
                ),
              ),
            ),
          ),
          24.height,
          Padding(
            padding: EdgeInsets.only(left: 24.0.w),
            child: SizedBox(
              height: 100.h,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: DynaminUserData().dynaminUserData.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Get.to(DesignerProfile(
                        designerData: DynaminUserData().dynaminUserData[index],
                      ));
                    },
                    child: Padding(
                      padding: EdgeInsets.only(right: 10.0.w),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 35.r,
                            backgroundImage: AssetImage(DynaminUserData()
                                .dynaminUserData[index]
                                .profileImage),
                          ),
                          5.height,
                          Text(
                            DynaminUserData().dynaminUserData[index].userName,
                            style: GoogleFonts.mulish(
                                fontWeight: FontWeight.w600,
                                fontSize: 14.sp,
                                color: const Color.fromRGBO(33, 33, 33, 1)),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          24.height,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0.w),
            child: GestureDetector(
              onTap: () {
                Get.to(() => const NewArival());
              },
              child: Row(
                children: [
                  Text(
                    'New Arrival',
                    style: theme.textTheme.titleLarge,
                  ),
                  const Spacer(),
                  SvgPicture.string(Appicons.arrowforword),
                ],
              ),
            ),
          ),
          24.height,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0.w),
            child: Container(
              height: 291.h,
              decoration: const BoxDecoration(boxShadow: [
                BoxShadow(
                    blurRadius: 60,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                    color: Color.fromRGBO(4, 6, 15, 0.08)),
              ]),
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    height: 292.h,
                    width: 203.w,
                    child: Stack(
                      children: [
                        Image.asset('assets/ariveldesigin.png'),
                        Padding(
                          padding: EdgeInsets.only(top: 143.0.h),
                          child: Container(
                            height: 148.h,
                            width: 203.w,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(12),
                                  bottomLeft: Radius.circular(12),
                                ),
                                color: AppColor.white,
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 60,
                                      offset: Offset(0, 1),
                                      color: Color.fromRGBO(4, 6, 15, 0.04))
                                ]),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 15.0.w, top: 10.h),
                                  child: Text(
                                    'Green Polo',
                                    style: theme.textTheme.labelLarge,
                                  ),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 15.0.w),
                                  child: SvgPicture.string(Svgs.arivelRow),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 15.0.w, top: 10.h),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 12.h,
                                        width: 12.w,
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xffFFCD90)),
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Container(
                                        height: 12.h,
                                        width: 12.w,
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: AppColor.red),
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Container(
                                        height: 12.h,
                                        width: 12.w,
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xff313131)),
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      const Icon(
                                        Icons.add_circle_outline,
                                        size: 16,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 3.h,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 15.0.w),
                                  child: Text(
                                    '100 SAR',
                                    style: GoogleFonts.mulish(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16.sp,
                                        color: const Color.fromRGBO(
                                            33, 33, 33, 1)),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100.h,
                    width: 15.w,
                  ),
                  SizedBox(
                    height: 291.h,
                    width: 203.w,
                    child: Stack(
                      children: [
                        Image.asset('assets/ariveldesigin.png'),
                        Padding(
                          padding: EdgeInsets.only(top: 143.0.h),
                          child: Container(
                            height: 148.h,
                            width: 203.w,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(12),
                                  bottomLeft: Radius.circular(12),
                                ),
                                color: AppColor.white,
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 60,
                                      offset: Offset(0, 1),
                                      color: Color.fromRGBO(4, 6, 15, 0.04))
                                ]),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 15.0.w, top: 10.h),
                                  child: Text(
                                    'Round neck shirt',
                                    style: theme.textTheme.labelLarge,
                                  ),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 15.0.w),
                                  child: SvgPicture.string(Svgs.arivelRow),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 15.0.w, top: 10.h),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 12.h,
                                        width: 12.w,
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xffFFCD90)),
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Container(
                                        height: 12.h,
                                        width: 12.w,
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: AppColor.red),
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Container(
                                        height: 12.h,
                                        width: 12.w,
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xff313131)),
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      const Icon(
                                        Icons.add_circle_outline,
                                        size: 16,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 3.h,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 15.0.w),
                                  child: Text(
                                    '100 SAR',
                                    style: GoogleFonts.mulish(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16.sp,
                                        color: const Color.fromRGBO(
                                            33, 33, 33, 1)),
                                  ),
                                )
                              ],
                            ),
                          ),
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
        ],
      ),
    );
  }
}
