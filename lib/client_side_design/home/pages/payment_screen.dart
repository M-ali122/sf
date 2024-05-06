import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/helper/extensions/spacings.dart';
import 'package:sf_app/helper/view/Appbutton.dart';
import 'package:sf_app/client_side_design/home/pages/payment_confrim.dart';
import 'package:sf_app/resources/color/app_color.dart';
import 'package:sf_app/resources/icon/icon.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  int selectedOption = -1; // Initial selection

  @override
  Widget build(BuildContext context) {
    final theme = Get.theme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Payment',
          style: theme.textTheme.headline1,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            18.height,
            _buildPaymentOption(
                Appicons.paypallogo, 'PayPal', 0), // Option 0
            const SizedBox(height: 25),
            _buildPaymentOption(
                Appicons.googlelogo, 'Google Pay', 1), // Option 1
            const SizedBox(height: 25),
            _buildPaymentOption(
                Appicons.applelogo, 'Apple Pay', 2), // Option 2
            const SizedBox(height: 25),
            _buildPaymentOption(
                Appicons.mastercardlogo, 'MasterCard', 3), 
                40.height,
            Container(
              height: 58.h,
              width: 380.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: const Color.fromRGBO(243, 243, 243, 1),
              ),
              child: Center(
                child: Text('Add New Card',
                style: GoogleFonts.mulish(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: const Color.fromRGBO(53, 56, 63, 1)

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
        decoration: const BoxDecoration(
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
                  const TextSpan(
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
                  title: 'Continue',
                  onTap: () {
                     Get.to(const PaymentConfrimScreen());
                  }),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildPaymentOption(String iconData, String title, int index) {
    
    return InkWell(
      onTap: () {
        setState(() {
          selectedOption = index;
        });
      },
      child: Container(
        height: 80.h,
        width: 380.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: AppColor.white,
            boxShadow: const [
              BoxShadow(
                  blurRadius: 60,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                  color: Color.fromRGBO(4, 6, 15, 0.05))
            ]),
        child: Row(
          children: [
            SizedBox(width: 24.w),
            SvgPicture.string(iconData),
            SizedBox(width: 10.w),
            Text(
              title,
              style: GoogleFonts.mulish(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: AppColor.Dark1),
            ),
            const Spacer(),
            Radio(
              activeColor: const Color.fromRGBO(201, 179, 114, 1),
              fillColor: const MaterialStatePropertyAll(Color.fromRGBO(201, 179, 114, 1),),
              value: index,
              groupValue: selectedOption,
              onChanged: (int? value) {
                setState(() {
                  selectedOption = value!;
                });
              },
            ),
            SizedBox(width: 24.w),
          ],
        ),
      ),
    );
  }
}
