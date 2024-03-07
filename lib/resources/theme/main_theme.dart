import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainTheme {
  ThemeData get theme => ThemeData(
        primaryColor: Colors.blue,
        textTheme:
            Typography.englishLike2018.apply(fontSizeFactor: 1.sp).copyWith(
                headline1: const TextStyle(fontSize: 48, fontWeight: FontWeight.w700),
                headline2: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 40,
                ),
                headline3: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                ),
                headline4: const TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                headline5: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                headline6: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                bodyLarge: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
                bodyMedium: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  letterSpacing: 0.2,
                ),
                bodySmall: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.2,
                )),
      );
}
