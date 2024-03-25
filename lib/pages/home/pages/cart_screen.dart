import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/helper/extensions/spacings.dart';
import 'package:sf_app/helper/view/Appbutton.dart';
import 'package:sf_app/pages/home/pages/address_screen.dart';
import 'package:sf_app/resources/color/app_color.dart';
import 'package:sf_app/resources/icon/icon.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Get.theme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cart',
          style: theme.textTheme.headline1,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            22.height,
            TextField(
              decoration: InputDecoration(
                filled: true,
                contentPadding: const EdgeInsets.symmetric(vertical: 20),
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
                prefixIcon: Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 10),
                  child: SvgPicture.string(
                    Appicons.searchBorder,
                    color: Color.fromRGBO(189, 189, 189, 1),
                    height: 20,
                    width: 20,
                  ),
                ),
                hintText: 'Search Products, designers',
                hintStyle: const TextStyle(color: AppColor.GreyScale400),
              ),
            ),
            20.height,
            ListView.builder(
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                  height: 170.h,
                  width: 380.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      color: AppColor.white,
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 60,
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                            color: Color.fromRGBO(4, 6, 15, 0.05))
                      ]),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 33,
                        left: 20,
                        child: Container(
                          height: 102,
                          width: 120,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: AppColor.backGroundSilver),
                          child: Center(
                            child: Image.asset('assets/profile5.png'),
                          ),
                        ),
                      ),
                      Positioned(
                          top: 25.h,
                          left: 330.w,
                          child: SvgPicture.string(Appicons.tickfill)),
                      Positioned(
                          top: 70.h,
                          left: 334.w,
                          child: SvgPicture.string(Appicons.editBorder)),
                      Positioned(
                          top: 75.h,
                          left: 240.w,
                          child: Container(
                            height: 12.h,
                            width: 12.w,
                            decoration: ShapeDecoration(
                                shape: CircleBorder(),
                                color: Color(0xff017663)),
                          )),
                      Positioned(
                          top: 120.h,
                          left: 334.w,
                          child: SvgPicture.string(
                            Appicons.deleteBorder,
                            color: AppColor.red,
                            height: 20,
                            width: 20,
                          )),
                      Positioned(
                          top: 70.h,
                          left: 334.w,
                          child: SvgPicture.string(Appicons.editBorder)),
                      Positioned(
                        left: 150,
                        top: 20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Product Name',
                              style: theme.textTheme.labelLarge,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Size: L',
                              style: GoogleFonts.mulish(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: AppColor.GreyScale600),
                            ),
                            5.height,
                            Text(
                              'Color: Green',
                              style: GoogleFonts.mulish(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: AppColor.GreyScale600),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Qty: 1',
                              style: GoogleFonts.mulish(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: AppColor.GreyScale600),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  '44.00 SAR',
                                  style: theme.textTheme.bodyText1,
                                ),
                                const SizedBox(
                                  width: 3,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
      bottomSheet: Container(
        height: 118.h,
        width: Get.width,
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: Color(0xffF5F5F5)),
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
               style: GoogleFonts.urbanist(
              fontWeight: FontWeight.w700,
              fontSize: 24,
              color:AppColor.Dark1
            ),
                children: <TextSpan>[
                  TextSpan(
                    text: '88.00 SAR',
                  ),
                  TextSpan(
                    text: '\n2 Articles',
                    style: GoogleFonts.urbanist(
              fontWeight: FontWeight.w500,
              fontSize: 12,
              color:AppColor.GreyScale500
            ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0,left: 40),
              child: AppButton(
                  width: 236.w, height: 58.h, title: 'Continue', onTap: () {
                    Get.to(AddressScreen());
                  }),
            )
          ],
        ),
      ),
    );
  }
}
