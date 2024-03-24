import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/pages/home/pages/women_categories.dart';
import 'package:sf_app/resources/color/app_color.dart';
import 'package:sf_app/resources/icon/icon.dart';
import 'package:sf_app/resources/icon/svgs.dart';

class HomeScreen extends StatelessWidget {
  static const String route = "HomeScreen";

  @override
  Widget build(BuildContext context) {
    final theme = Get.theme;

    Widget buildCategory(String label, String imagePath,  {TextStyle? textStyle}) {
      return Container(
        width: 162,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color.fromRGBO(76, 175, 80, 0.08),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Text(
                  label,
                  style: textStyle  ,
                  ),
              ),
            ),
            Container(
              height: Get.height,
              width: 80,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                children: [
                  Image.asset('assets/Image.png'),
                  SizedBox(width: 10.h),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Welcome Back'),
                      Text(
                        'User Name',
                        style: GoogleFonts.mulish(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: AppColor.GreyScale900,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  SvgPicture.string(Svgs.shop),
                  SizedBox(width: 20.h),
                  SvgPicture.string(Svgs.chat),
                ],
              ),
            ),
            SizedBox(height: 30.h),
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
            SizedBox(height: 20.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                children: [
                  Text(
                    'Top Categories',
                    style: theme.textTheme.headline6,
                  ),
                  const Spacer(),
                  SvgPicture.string(Appicons.arrowforword),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Get.toNamed(WomenCategroies.route);
                    },
                    child: buildCategory(
                      'Women',
                      'assets/women.png',
                      textStyle: theme.textTheme.headline5
                    ),
                  ),
                  const Spacer(),
                  buildCategory('Men', 'assets/men.png',
                      textStyle: theme.textTheme.headline5),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildCategory('Shoe', 'assets/shoe.png',
                      textStyle: theme.textTheme.headline5),
                  const Spacer(),
                  buildCategory('Bag', 'assets/bag.png',
                      textStyle: theme.textTheme.headline5),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildCategory('Lifestyle', 'assets/lifestyle.png',
                      textStyle: theme.textTheme.headline5),
                  const Spacer(),
                  buildCategory('Sports', 'assets/sport.png',
                      textStyle: theme.textTheme.headline5),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: SizedBox(
                height: 70,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 15.0),
                      child: CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage("assets/aubrey.png"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15.0),
                      child: CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage("assets/darell.png"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15.0),
                      child: CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage("assets/julie.png"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15.0),
                      child: CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage("assets/sami.png"),
                      ),
                    ),
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage("assets/brandi.png"),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
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
            const SizedBox(
              height: 20,
            ),
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
