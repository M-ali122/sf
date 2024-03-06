import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainTheme {
  ThemeData get theme => ThemeData(
        primaryColor: Colors.blue,
        textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
      );
}
