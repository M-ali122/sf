import 'dart:ui';

import 'package:flutter/material.dart';

class AppColor {
  static MaterialColor primarySwatch = MaterialColor(0xFF475736, {
    50: const Color(0xFF475736).withOpacity(0.05),
    100: const Color(0xFFC7D4BA).withOpacity(0.1),
    200: const Color(0xFF95AD7B),
    300: const Color(0xFF7B975E),
    400: const Color(0xFF62784A),
    500: const Color(0xff475736),
    600: const Color(0xFF475736),
    700: const Color(0xFF475736),
    800: const Color(0xFF475736),
    900: const Color(0xFF475736),
  });

  static const Color primaryColor500 = Color(0xFF475736);
  static const Color primaryColor400 = Color(0xFF62784A);
  static const Color primaryColor300 = Color(0xFF7B975E);
  static const Color primaryColor200 = Color(0xFF95AD7B);
  static const Color primaryColor100 = Color(0xFFC7D4BA);

  static const Color borderColor = Color(0xffC9B372);
  static const Color secondaryColor500 = Color.fromRGBO(201, 179, 114, 1);

  static const Color secondaryColor400 = Color(0xFFD7C798);
  static const Color secondaryColor300 = Color(0xFFE6DBBD);
  static const Color secondaryColor200 = Color(0xFFF4EFE1);
  static const Color secondaryColor100 = Color.fromRGBO(251, 249, 244, 1);

  static const Color alartSuccess = Color(0xFF4ADE80);
  static const Color alartInfo = Color(0xFF246BFD);
  static const Color alartWarning = Color(0xFFFACC15);
  static const Color alartError = Color(0xFFF75555);
  static const Color alartDisabled = Color(0xFFD8D8D8);
  static const Color alartDisabledButton = Color(0xFF393939);

  ///Gradients
  static LinearGradient mainGradient = const LinearGradient(
    colors: [
      Color(0xFF72975E),
      Color(0xFF475736),
    ],
  );

  static LinearGradient tabbarGradient = const LinearGradient(
    colors: [
      Color.fromRGBO(243, 243, 243, 1),
      Color.fromRGBO(243, 243, 243, 1),
    ],
  );

  static LinearGradient textfieldGredient = const LinearGradient(colors: [
    Color.fromRGBO(153, 153, 153, 0.4),
    Color.fromRGBO(202, 202, 202, 0.4),
  ]);

  static const LinearGradient buttonGredient = LinearGradient(
    colors: [Color(0xffF3F3F3), Color(0xffF3F3F3)],
    // begin: Alignment.topLeft,
    // end: Alignment.bottomRight,
    // stops: [0.0, 1.0],
    // tileMode: TileMode.clamp,
  );

  static const LinearGradient blackGradient = LinearGradient(
    colors: [Color(0xFF101010), Color(0xFF313130)],
  );

  static const LinearGradient welcomeConatiner =
      LinearGradient(colors: [Color(0xffFFFFFF), Color(0xffFFFFFF00)]);

  static const LinearGradient blueGradient = LinearGradient(
    colors: [Color(0xFF335EF7), Color(0xFF5F82FF)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.0, 1.0],
    tileMode: TileMode.clamp,
  );

  static const LinearGradient purpleGradient = LinearGradient(
    colors: [Color(0xFF7210FF), Color(0xFF9D59FF)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.0, 1.0],
    tileMode: TileMode.clamp,
  );

  static const LinearGradient yellowGradient = LinearGradient(
    colors: [Color(0xFFFACC15), Color(0xFFFFE580)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.0, 1.0],
    tileMode: TileMode.clamp,
  );

  static const LinearGradient circleButtonGradient = LinearGradient(colors: [
    Color(0xFFF3F3F3),
    Color(0xFFF3F3F3),
  ]);

  static const LinearGradient greenGradient = LinearGradient(
    colors: [Color(0xFF22BB9C), Color(0xFF35DEBC)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.0, 1.0],
    tileMode: TileMode.clamp,
  );

  static const LinearGradient redGradient = LinearGradient(
    colors: [Color(0xFFFF4D67), Color(0xFFFF8A9B)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.0, 1.0],
    tileMode: TileMode.clamp,
  );

  ///Grey scale
  static const Color GreyScale900 = Color(0xFF212121);
  static const Color GreyScale800 = Color(0xFF424242);
  static const Color GreyScale700 = Color(0xFF616161);
  static const Color GreyScale600 = Color(0xFF757575);
  static const Color GreyScale500 = Color(0xFF9E9E9E);
  static const Color GreyScale400 = Color(0xFFBDBDBD);
  static const Color GreyScale300 = Color(0xFFE0E0E0);
  static const Color GreyScale200 = Color(0xFFEEEEEE);
  static const Color GreyScale100 = Color(0xFFF5F5F5);
  static const Color GreyScale50 = Color(0xFFFAFAFA);

  /// Dark Colors
  static const Color Dark1 = Color(0xFF181A20);
  static const Color Dark2 = Color(0xFF1F222A);
  static const Color Dark3 = Color(0xFF35383F);

  ///background
  static const Color backGroundSilver = Color(0xFFF3F3F3);
  static const Color backGroundPurple = Color(0xFFF4ECFF);
  static const Color backGroundBlue = Color(0xFFF6FAFD);
  static const Color backGroundGreen = Color(0xFFF2FFFC);
  static const Color backGroundOrange = Color(0xFFFFF8ED);
  static const Color backGroundPink = Color(0xFFFFF5F5);
  static const Color backGroundYellow = Color(0xFFFFFEE0);

  ///transparent

  // static Color transparentrallow = Color(0xffFACC1514).withOpacity(0.2);
  static Color transparentSilver = const Color(0xFF101010).withOpacity(0.08);
  static Color transparentPurple = const Color(0xFF7210FF).withOpacity(0.8);
  static Color transparentBlue = const Color(0xFF335EF7).withOpacity(0.8);
  static Color transparentOrange = const Color(0xFFFF9800).withOpacity(0.8);
  static Color transparentYellow = const Color(0xFFFACC15).withOpacity(0.8);
  static Color transparentRed = const Color(0xFFF75555).withOpacity(0.8);
  static Color transparentGreen = const Color(0xFF4CAF50).withOpacity(0.8);
  static Color transparentCyan = const Color(0xFF00BCD4).withOpacity(0.8);

  ///other
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color red = Color(0xFFF54336);
  static const Color pink = Color(0xFFEA1E61);
  static const Color purple = Color(0xFF9D28AC);
  static const Color deepPurple = Color(0xFF673AB3);
  static const Color indigo = Color(0xFF3F51B2);
  static const Color blue = Color(0xFF1A96F0);
  static const Color lightBlue = Color(0xFF00A9F1);
  static const Color cyan = Color(0xFF00BCD3);
  static const Color teal = Color(0xFF009689);
  static const Color green = Color(0xFF4AAF57);
  static const Color lightGreen = Color(0xFF8BC255);
  static const Color lime = Color(0xFFCDDC4C);
  static const Color yellow = Color(0xFFFFEB4F);
  static const Color amber = Color(0xFFFFC02D);
  static const Color orange = Color(0xFFFF981F);
  static const Color deepOrange = Color(0xFFFF5726);
  static const Color brown = Color(0xFF7A5548);
  static const Color blueGrey = Color(0xFF607D8A);
}
