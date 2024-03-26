import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/helper/extensions/spacings.dart';
import 'package:sf_app/pages/categories/views/top_categories.dart';
import 'package:sf_app/pages/community/view/desinger_profile.dart';
import 'package:sf_app/pages/order/view/order_screen.dart';
import 'package:sf_app/resources/color/app_color.dart';
import 'package:sf_app/resources/icon/icon.dart';
import 'package:sf_app/resources/icon/svgs.dart';

import '../../see_all_pages/designers_all.dart';

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
  @override
  Widget build(BuildContext context) {
    final theme = Get.theme;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                children: [
                  Image.asset('assets/Image.png'),
                  16.width,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Welcome Back'),
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
                    onTap: (){
                      Get.defaultDialog(
                        title: 'ALert',
                        content: Image.asset('assets/underbuild.png',height: 80,width: 60,),
                        actions: [
                          Text('App Under build')
                        ]                      );
                    },
                    child: SvgPicture.string(Svgs.chat),),
                ],
              ),
            ),
            24.height,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  contentPadding: const EdgeInsets.symmetric(vertical: 20),
                  fillColor: AppColor.GreyScale50,
                  focusColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.white, width: 2.0),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  border: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.white, width: 2.0),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.white, width: 2.0),
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
            24.height,
            InkWell(
              onTap: () {
                // Get.to(Designers());
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  children: [
                    Text(
                      'Top Designers',
                      style: theme.textTheme.headline6,
                    ),
                    const Spacer(),
                    SvgPicture.string(Appicons.arrowforword),
                  ],
                ),
              ),
            ),
            24.height,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: SizedBox(
                height: 70.h,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: image.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Get.to(DesignerProfile());
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage(image[index]),
                        ),
                      ),
                    );
                  },
                ),
                // child: ListView(
                //   shrinkWrap: true,
                //   scrollDirection: Axis.horizontal,
                //   children: const [
                //     Padding(
                //       padding: EdgeInsets.only(right: 15.0),
                //       child: CircleAvatar(
                //         radius: 35,
                //         backgroundImage: AssetImage("assets/aubrey.png"),
                //       ),
                //     ),
                //     Padding(
                //       padding: EdgeInsets.only(right: 15.0),
                //       child: CircleAvatar(
                //         radius: 35,
                //         backgroundImage: AssetImage("assets/darell.png"),
                //       ),
                //     ),
                //     Padding(
                //       padding: EdgeInsets.only(right: 15.0),
                //       child: CircleAvatar(
                //         radius: 35,
                //         backgroundImage: AssetImage("assets/julie.png"),
                //       ),
                //     ),
                //     Padding(
                //       padding: EdgeInsets.only(right: 15.0),
                //       child: CircleAvatar(
                //         radius: 35,
                //         backgroundImage: AssetImage("assets/sami.png"),
                //       ),
                //     ),
                //     CircleAvatar(
                //       radius: 35,
                //       backgroundImage: AssetImage("assets/brandi.png"),
                //     ),
                //   ],
              ),
            ),
            24.height,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                children: [
                  Text(
                    'New Arrival',
                    style: theme.textTheme.headline6,
                  ),
                  const Spacer(),
                  SvgPicture.string(Appicons.arrowforword),
                ],
              ),
            ),
            24.height,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Container(
                height: 292,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      blurRadius: 40,
                      offset: const Offset(0, 1),
                      spreadRadius: 0,
                      color: const Color(0xff04060F14).withOpacity(0.2)),
                ]),
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      height: 292,
                      width: 203,
                      child: Stack(
                        children: [
                          Image.asset('assets/ariveldesigin.png'),
                          Padding(
                            padding: const EdgeInsets.only(top: 143.0),
                            child: Container(
                              height: 148,
                              width: 203,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(12),
                                    bottomLeft: Radius.circular(12),
                                  ),
                                  color: AppColor.white),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15.0, top: 15),
                                    child: Text(
                                      'Green Polo',
                                      style: theme.textTheme.button,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: SvgPicture.string(Svgs.arivelRow),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15.0, top: 10),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 12,
                                          width: 12,
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color(0xffFFCD90)),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          height: 12,
                                          width: 12,
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: AppColor.red),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          height: 12,
                                          width: 12,
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color(0xff313131)),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Icon(
                                          Icons.add_circle_outline,
                                          size: 16,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 15.0),
                                    child: Text('100 SAR'),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 15,
                    ),
                    Container(
                      height: 292,
                      width: 203,
                      child: Stack(
                        children: [
                          Image.asset('assets/ariveldesigin.png'),
                          Padding(
                            padding: const EdgeInsets.only(top: 143.0),
                            child: Container(
                              height: 148,
                              width: 203,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(12),
                                    bottomLeft: Radius.circular(12),
                                  ),
                                  color: AppColor.white),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15.0, top: 15),
                                    child: Text(
                                      'Round neck shirt',
                                      style: theme.textTheme.button,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: SvgPicture.string(Svgs.arivelRow),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15.0, top: 10),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 12,
                                          width: 12,
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color(0xffFFCD90)),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          height: 12,
                                          width: 12,
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: AppColor.red),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          height: 12,
                                          width: 12,
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color(0xff313131)),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Icon(
                                          Icons.add_circle_outline,
                                          size: 16,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 15.0),
                                    child: Text('100 SAR'),
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
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
