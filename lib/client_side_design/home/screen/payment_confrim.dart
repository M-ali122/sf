import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/helper/extensions/spacings.dart';
import 'package:sf_app/helper/view/Appbutton.dart';
import 'package:sf_app/resources/color/app_color.dart';
import 'package:sf_app/resources/icon/icon.dart';
import 'package:sf_app/resources/icon/svgs.dart';

class PaymentConfrimScreen extends StatelessWidget {
  const PaymentConfrimScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Get.theme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Confirmation',
          style: theme.textTheme.displayLarge,
        ),
      ),
      body: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30.h,
          ),
          Container(
            height: 139.h,
            width: 382.w,
            padding: EdgeInsets.symmetric(horizontal: 24),
            decoration: BoxDecoration(
                // color: AppColor.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 60,
                    color: Color.fromRGBO(4, 6, 15, 0.08),
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ]),
            child: Container(
              decoration: BoxDecoration(
                color: AppColor.white,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 15.h,
                    ),
                    Text('Have a Promo Code?'),
                    10.height,
                    Divider(
                      color: Color.fromRGBO(238, 238, 238, 1),
                    ),
                    10.height,
                    Row(
                      children: [
                        Container(
                          width: 222.w,
                          height: 53.h,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(250, 250, 250, 1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                contentPadding: EdgeInsetsDirectional.symmetric(
                                    horizontal: 20),
                                hintText: 'Enter code here',
                                hintStyle: GoogleFonts.mulish(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: const Color.fromRGBO(158, 158, 158, 1),
                                ),
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                enabledBorder: InputBorder.none),
                          ),
                        ),
                        Spacer(),
                        AppButton(
                            height: 38.h,
                            width: 101.w,
                            title: 'Redeem',
                            onTap: () {})
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          30.height,
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
                      top: 75.h,
                      left: 240.w,
                      child: Container(
                        height: 12.h,
                        width: 12.w,
                        decoration: ShapeDecoration(
                            shape: CircleBorder(), color: Color(0xff017663)),
                      )),
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
                              style: theme.textTheme.bodyLarge,
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
            ),
          ),
          30.height,
          Container(
            height: 184.h,
            width: 382.w,
            padding: EdgeInsets.symmetric(horizontal: 24),
            decoration: const BoxDecoration(boxShadow: [
              BoxShadow(
                  blurRadius: 60,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                  color: Color.fromRGBO(4, 6, 15, 0.08))
            ]),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                color: AppColor.white,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    18.height,
                    Row(
                      children: [
                        Text(
                          'Home',
                          style: theme.textTheme.labelLarge,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 28.h,
                          width: 84.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Color.fromRGBO(71, 87, 54, 1)),
                          child: Center(
                            child: Text(
                              'Main Address',
                              style: GoogleFonts.urbanist(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 10,
                                  color: AppColor.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                    7.height,
                    Divider(
                      color: AppColor.GreyScale200,
                    ),
                    7.height,
                    Text(
                      'Full Name',
                      style: theme.textTheme.labelLarge,
                    ),
                    7.height,
                    Text(
                      '701 7th Ave, Riyadh, 10036, SAD',
                      style: GoogleFonts.mulish(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color.fromRGBO(117, 117, 117, 1)),
                    ),
                    7.height,
                    Row(
                      children: [
                        SvgPicture.string(
                          Appicons.locationBorder,
                          color: Color.fromRGBO(117, 117, 117, 1),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          'Pinpoint already',
                          style: GoogleFonts.mulish(
                              fontWeight: FontWeight.w400, fontSize: 14),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          30.height,
          Container(
            height: 80.h,
            width: 380.w,
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            decoration: BoxDecoration(boxShadow: const [
              BoxShadow(
                  blurRadius: 60,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                  color: Color.fromRGBO(4, 6, 15, 0.05))
            ]),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: AppColor.white,
              ),
              child: Row(
                children: [
                  SizedBox(width: 24.w),
                  SvgPicture.string(Appicons.mastercardlogo),
                  SizedBox(width: 10.w),
                  Text(
                    '•••• •••• •••• •••• 4679',
                    style: GoogleFonts.mulish(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: AppColor.Dark1),
                  ),
                  const Spacer(),
                  SizedBox(width: 24.w),
                ],
              ),
            ),
          ),
          30.height,
          Container(
            height: 460.h,
            width: 382.w,
            padding: EdgeInsets.symmetric(horizontal: 24),
            decoration: BoxDecoration(boxShadow: const [
              BoxShadow(
                  blurRadius: 60,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                  color: Color.fromRGBO(4, 6, 15, 0.05))
            ]),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: AppColor.white,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.only(right: 20),
                      leading: SvgPicture.string(Appicons.paperBorder),
                      title: Text('Review Summary',style: theme.textTheme.titleLarge,),
                    ),
                    Divider(),
                    ListTile(
                      contentPadding: EdgeInsets.only(right: 20),
                      title: Text('Subtotal (3 items)',
                      style: GoogleFonts.mulish(
                        fontWeight: FontWeight.w500,
                        fontSize: 18.sp,
                        color: AppColor.Dark1,
                      )),
                      trailing: Text('88.00 SAR',
                      style: GoogleFonts.mulish(
                        fontWeight: FontWeight.w600,
                        fontSize: 18.sp,
                        color: AppColor.Dark1,
                      )),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.only(right: 20),
                      title: Text('Service Fee',
                      style: GoogleFonts.mulish(
                        fontWeight: FontWeight.w500,
                        fontSize: 18.sp,
                        color: AppColor.Dark1,
                      )),
                      trailing: Text('20.00 SAR',
                      style: GoogleFonts.mulish(
                        fontWeight: FontWeight.w600,
                        fontSize: 18.sp,
                        color: AppColor.Dark1,
                      )),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.only(right: 20),
                      title: Text('Delivery Fee',
                      style: GoogleFonts.mulish(
                        fontWeight: FontWeight.w500,
                        fontSize: 18.sp,
                        color: AppColor.Dark1,
                      )),
                      trailing: Text('15.00 SAR',
                      style: GoogleFonts.mulish(
                        fontWeight: FontWeight.w600,
                        fontSize: 18.sp,
                        color: AppColor.Dark1,
                      )),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.only(right: 20),
                      title: Text('Tax',
                      style: GoogleFonts.mulish(
                        fontWeight: FontWeight.w500,
                        fontSize: 18.sp,
                        color: AppColor.Dark1,
                      )),
                      trailing: Text('3.00 SAR',
                      style: GoogleFonts.mulish(
                        fontWeight: FontWeight.w600,
                        fontSize: 18.sp,
                        color: AppColor.Dark1,
                      )),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.only(right: 20),
                      title: Text('Promos',
                      style: GoogleFonts.mulish(
                        fontWeight: FontWeight.w500,
                        fontSize: 18.sp,
                        color: AppColor.Dark1,
                      )),
                      trailing: Text('-50.00 SAR',
                      style: GoogleFonts.mulish(
                        fontWeight: FontWeight.w600,
                        fontSize: 18.sp,
                        color: AppColor.Dark1,
                      )),
                    ),
                    Divider(
                      color: Color.fromRGBO(238, 238, 238, 1),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.only(right: 20),
                      title: Text('Total Payment',
                      style: GoogleFonts.mulish(
                        fontWeight: FontWeight.w500,
                        fontSize: 18.sp,
                        color: AppColor.Dark1,
                      )),
                      trailing: Text('140 SAR',
                      style: GoogleFonts.mulish(
                        fontWeight: FontWeight.w600,
                        fontSize: 18.sp,
                        color: AppColor.Dark1,
                      )),
                    ),
                  ],
                ),
              ),
            ),
          ),
          170.height,
        ],
      ),
      bottomSheet: Container(
        height: 118.h,
        width: Get.width,
        decoration: BoxDecoration(
            border: Border(
          top: BorderSide(color: Color(0xffF5F5F5)),
        )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                style: GoogleFonts.urbanist(
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                    color: AppColor.Dark1),
                children: <TextSpan>[
                  TextSpan(
                    text: '88.00 SAR',
                  ),
                  TextSpan(
                    text: '\n2 Articles',
                    style: GoogleFonts.urbanist(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: AppColor.GreyScale500),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0, left: 40),
              child: AppButton(
                  width: 236.w,
                  height: 58.h,
                  title: 'Pay',
                  onTap: () {
                    showDialog(
                        builder: (context) {
                          return AlertDialog(
                            backgroundColor: AppColor.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            // backgroundColor: Color.fromRGBO(r, g, b, opacity),
                            icon: SvgPicture.string(Svgs.paymentsuccessiloglogo),
                            title: Text(
                              'Payment successful ',
                              style: theme.textTheme.displayLarge,
                            ),
                            actions: [
                              const Text(
                                'You can check your order on the order page.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Mulish",
                                  color: Color.fromRGBO(33, 33, 33, 1),
                                ),
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              GestureDetector(
                                onTap: (){
                                  Get.back();
                                },
                                child: Container(
                                  width: 276.w,
                                  height: 58.h,
                                  decoration: BoxDecoration(
                                    gradient: AppColor.mainGradient,
                                    borderRadius: BorderRadius.circular(100.r),
                                  ),
                                  child: Center(
                                      child: Text(
                                    "Order Page",
                                    style: GoogleFonts.mulish(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                      color: AppColor.white
                                    ),
                                  )),
                                ),
                              ),
                            ],
                          );
                        },
                        context: context);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
