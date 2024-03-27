import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/helper/extensions/spacings.dart';
import 'package:sf_app/helper/view/Appbutton.dart';
import 'package:sf_app/pages/home/pages/payment_screen.dart';
import 'package:sf_app/resources/color/app_color.dart';
import 'package:sf_app/resources/icon/icon.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Get.theme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Address',
          style: theme.textTheme.headline1,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            18.height,
            Container(
              height: 184.h,
              width: 382.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                border: Border.all(
                  color: Color.fromRGBO(201, 179, 114, 1)
                )
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    18.height,
                    Row(
                      children: [
                        Text('Home',
                         style: theme.textTheme.button,
                        ),
                        SizedBox(width: 20,),
                        Container(
                          height: 28.h,
                          width: 84.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Color.fromRGBO(71, 87, 54, 1)
                          ),
                          child: Center(
                            child: Text('Main Address',
                            style: GoogleFonts.urbanist(
                              fontWeight: FontWeight.w600,
                              fontSize: 10,
                              color: AppColor.white
                            ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    7.height,
                    Divider(color: AppColor.GreyScale200,),
                    7.height,
                    Text('Full Name',
                         style: theme.textTheme.button,
                    ),
                    7.height,
                    Text(
                      '701 7th Ave, Riyadh, 10036, SAD',
                         style: GoogleFonts.mulish(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color.fromRGBO(117, 117, 117, 1)
                        ),
                    ),
                    7.height,
                    Row(
                      children: [
                        SvgPicture.string(Appicons.locationBorder,color: Color.fromRGBO(117, 117, 117, 1),),
                        SizedBox(width: 10.w,),
                        Text(
                          'Pinpoint already',
                          style: GoogleFonts.mulish(
                            fontWeight: FontWeight.w400,
                            fontSize: 14
                          ),
                          )
                      ],
                    )
                  ],
                ),
              ),
            ),
            30.height,
            Container(
              height: 58.h,
              width: 380.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Color.fromRGBO(243, 243, 243, 1),
              ),
              child: Center(
                child: Text('Add Address',
                style: GoogleFonts.mulish(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: Color.fromRGBO(53, 56, 63, 1)

                ),
                ),
              ),
            ),
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
                    Get.to(PaymentScreen());
                  }),
            )
          ],
        ),
      ),
    );
  }
}
