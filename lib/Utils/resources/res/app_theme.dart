import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static Color appColor = const Color(0xff055194);
  static Color lightAppColor = const Color(0xffF1F4FF);
  static Color lightText = const Color(0xff626262);
  static Color blackText = const Color(0xff2C2C2C);
  static Color black = const Color(0xff000000);

  static Color text8C = const Color(0xff8C8C8C); 
  
   static Color textAB = const Color(0xffABABAB);
   static Color text45 = const Color(0xff454545);


  static Color white = Colors.white;
  
  static Color whiteColor = Colors.white;

  // static const Color primaryColorLite = Color(0xff65FF8F);
  // static const Color primarySwatchColor = Color(0xff36F12C);
  // static final Color primaryDarkColor = Colors.green[700]!;
  // static const Color ratingGreyColor = Color(0xffDADADA);
  // static const Color ratingYellowColor = Color(0xffF4DD06);
  // static const Color addButtonColor = Color(0xff4CAF50);
  // static const Color whiteColor = Color(0xffFFFFFF);
  // static const Color yellowColor = Color(0xffF4DD06);
  // static Color appColorLight = const Color(0xFFFB8080);

  // static final ThemeData appThemeData = ThemeData(
  //   fontFamily: 'WorkSans',
  //   brightness: Brightness.light,
  //   primarySwatch: Colors.green,
  //   primaryColor: primaryColor,
  //   primaryColorDark: primaryColorLite,
  // );
}

class ScreenSize {
  BuildContext context;

  ScreenSize(this.context);

  double get width => MediaQuery.of(context).size.width;

  double get height => MediaQuery.of(context).size.height;
}
