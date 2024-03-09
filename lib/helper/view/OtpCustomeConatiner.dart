import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../resources/color/app_color.dart';

class OtpCustomConatiner extends StatelessWidget {

  final Color? color;

  const OtpCustomConatiner({super.key,this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 70.h,
          width: 84.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: AppColor.GreyScale50,
            border: Border.all(
              color: color?? AppColor.GreyScale200,
            )
          ),
          child: Center(child: Text('1')),
        ),
        Container(
          height: 70.h,
          width: 84.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: AppColor.GreyScale50,
              border: Border.all(
                color: color?? AppColor.GreyScale200,
              )
          ),
          child: Center(child: Text('1')),
        ),
        Container(
          height: 70.h,
          width: 84.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: AppColor.GreyScale50,
              border: Border.all(
                color: color?? AppColor.secondaryColor500,
              )
          ),
          child: Center(child: Text('1')),
        ),
        Container(
          height: 70.h,
          width: 84.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: AppColor.GreyScale50,
              border: Border.all(
                color: color?? AppColor.GreyScale200,
              )
          ),
          child: Center(child: Text('1')),
        ),
      ],
    );
  }
}
