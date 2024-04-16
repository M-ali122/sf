import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sf_app/pages/products/controllers/product_controller.dart';

import '../../resources/color/app_color.dart';

// ignore: must_be_immutable
class DoubledOutlineButton extends StatefulWidget {
  ProductController controller = Get.put(ProductController());
  final String titleOne;
  final String titleTwo;
  final ValueChanged<int> onIndexChanged;
  DoubledOutlineButton(
      {Key? key,
      required this.titleOne,
      required this.onIndexChanged,
      required this.titleTwo})
      : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _DoubledOutlineButtonState createState() => _DoubledOutlineButtonState();
}

class _DoubledOutlineButtonState extends State<DoubledOutlineButton> {
  int _selectedIndex = 0;
 
  ProductController controller = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370.w,
      height: 52.h,
      decoration: BoxDecoration(
          color: AppColor.backGroundSilver,
          borderRadius: BorderRadius.circular(40)),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              setState(() {
                _selectedIndex = 0;
              });
            widget.onIndexChanged(_selectedIndex);
            
            },
            child: Container(
              width: 185.w,
              height: 52.h,
              decoration: BoxDecoration(
                  gradient:
                      _selectedIndex == 0 ? AppColor.mainGradient : null,
                  borderRadius: BorderRadius.circular(40)),
              child: Center(
                  child: Text(
                widget.titleOne,
                style: GoogleFonts.mulish(
                  fontWeight: FontWeight.w700,
                  fontSize: 16.sp,
                  color: _selectedIndex == 0
                      ? const Color.fromRGBO(255, 255, 255, 1)
                      : const Color.fromRGBO(33, 33, 33, 1),
                ),
              )),
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                _selectedIndex = 1;
              });
              // Navigate to ReviewField screen when second container is clicked
            widget.onIndexChanged(_selectedIndex);
            },
            child: Container(
              width: 185.w,
              height: 52.h,
              decoration: BoxDecoration(
                  gradient:
                      _selectedIndex == 1 ? AppColor.mainGradient : null,
                  borderRadius: BorderRadius.circular(40)),
              child: Center(
                  child: Text(
                widget.titleTwo,
                style: GoogleFonts.mulish(
                  fontWeight: FontWeight.w700,
                  fontSize: 16.sp,
                  color: _selectedIndex == 1
                      ? const Color.fromRGBO(255, 255, 255, 1)
                      : const Color.fromRGBO(33, 33, 33, 1),
                ),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
