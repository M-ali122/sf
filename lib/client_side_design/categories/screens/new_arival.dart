import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/helper/extensions/spacings.dart';
import 'package:sf_app/resources/color/app_color.dart';
import 'package:sf_app/resources/icon/svgs.dart';

class NewArival extends StatefulWidget {
  const NewArival({super.key});

  @override
  State<NewArival> createState() => _NewArivalState();
}

class _NewArivalState extends State<NewArival> {
  final theme = Get.theme;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'New Arival',
          style: GoogleFonts.mulish(
              fontWeight: FontWeight.w700,
              fontSize: 24.sp,
              color: const Color.fromRGBO(33, 33, 33, 1)),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        shrinkWrap: true,
        children: [
          20.height,
          Row(
            children: [
              Container(
                height: 324.h,
                width: 178.w,
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                      blurRadius: 60,
                      offset: Offset(0, 1),
                      color: Color.fromRGBO(4, 6, 15, 0.04))
                ]),
                child: Stack(
                  children: [
                    Positioned(
                        top: 18.h,
                        child: Image.asset(
                          'assets/ariveldesigin.png',
                          height: 134.h,
                          width: 178.w,
                        )),
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
                              padding:
                                  const EdgeInsets.only(left: 15.0, top: 15),
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
                              padding:
                                  const EdgeInsets.only(left: 15.0, top: 10),
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
                            Padding(
                              padding: EdgeInsets.only(left: 15.0),
                              child: Text(
                                '100 SAR',
                                style: GoogleFonts.mulish(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18.sp,
                                    color: const Color.fromRGBO(33, 33, 33, 1)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 100,
                width: 15,
              ),
              Container(
                height: 324.h,
                width: 178.w,
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                      blurRadius: 60,
                      offset: Offset(0, 1),
                      color: Color.fromRGBO(4, 6, 15, 0.04))
                ]),
                child: Stack(
                  children: [
                    Positioned(
                        top: 18.h,
                        child: Image.asset(
                          'assets/ariveldesigin.png',
                          height: 134.h,
                          width: 178.w,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 143.0),
                      child: Container(
                        height: 148.h,
                        width: 203.w,
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
                              padding:
                                  const EdgeInsets.only(left: 15.0, top: 15),
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
                              padding:
                                  const EdgeInsets.only(left: 15.0, top: 10),
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
                            Padding(
                              padding: EdgeInsets.only(left: 15.0),
                              child: Text(
                                '100 SAR',
                                style: GoogleFonts.mulish(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18.sp,
                                    color: const Color.fromRGBO(33, 33, 33, 1)),
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
          )
        ],
      ),
    );
  }
}
