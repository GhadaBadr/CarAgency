import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'local.dart';

ThemeData myTheme() {
  return ThemeData(
      fontFamily: (LocalizationService.langs.last == 'English')
          ? 'OpenSans-Regular'
          : 'Tajawal-Regular',
      appBarTheme: AppBarTheme(
          color: Color(0xff4852c1),
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white),
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: (LocalizationService.langs.last == 'English')
                ? 'OpenSans-Regular'
                : 'Tajawal-Regular',
          )),
      dividerColor: Colors.transparent,
      canvasColor: Color(0xff4852c1),
      primaryColor: Color(0xfff3f3f3),
      colorScheme: ThemeData.light().colorScheme.copyWith(),
      textTheme: TextTheme(
        bodyText1: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w300,
          fontFamily: (LocalizationService.langs.last == 'English')
              ? 'OpenSans-Regular'
              : 'Tajawal-Regular',
        ),
        bodyText2: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.w600,
          fontFamily: (LocalizationService.langs.last == 'English')
              ? 'OpenSans-Regular'
              : 'Tajawal-Regular',
        ),
        subtitle1: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.normal,
          fontFamily: (LocalizationService.langs.last == 'English')
              ? 'OpenSans-Regular'
              : 'Tajawal-Regular',
        ),
        subtitle2: TextStyle(
          color: Colors.black,
          fontSize: 10,
          fontWeight: FontWeight.normal,
          fontFamily: (LocalizationService.langs.last == 'English')
              ? 'OpenSans-Regular'
              : 'Tajawal-Regular',
        ),
        headline6: TextStyle(
          color: Color(0xff4677d3),
          fontSize: 18,
          fontWeight: FontWeight.normal,
          fontFamily: (LocalizationService.langs.last == 'English')
              ? 'OpenSans-Regular'
              : 'Tajawal-Regular',
        ),
        headline5: TextStyle(
          color: Color(0xff000000),
          fontSize: 18,
          fontWeight: FontWeight.normal,
          fontFamily: (LocalizationService.langs.last == 'English')
              ? 'OpenSans-Regular'
              : 'Tajawal-Regular',
        ),
        headline4: TextStyle(
          color: Color(0xff90959b),
          fontSize: 17,
          fontWeight: FontWeight.normal,
          fontFamily: (LocalizationService.langs.last == 'English')
              ? 'OpenSans-Regular'
              : 'Tajawal-Regular',
        ),
        headline3: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16,
          color: Color(0xff4278dc),
          fontFamily: (LocalizationService.langs.last == 'English')
              ? 'OpenSans-Regular'
              : 'Tajawal-Regular',
        ),
        headline1: TextStyle(
          fontSize: 18,
          fontFamily: (LocalizationService.langs.last == 'English')
              ? 'OpenSans-Regular'
              : 'Tajawal-Regular',
        ),
      ));
}

class AppTheme {
  static Color white = Colors.white;
  static Color black = Colors.black;
  static Color blue = Color(0xff3c78e6);
  static Color bluegrey = Color(0xffb4a8c0);
  static Color lightgrey = Color(0xfff5f0f7);
  static Color darkgrey = Color(0xff93929f);
  static Color lightMov = Color(0xff9297d9);
  static Color red = Color(0xffd20f0d);
  static Color grey = Color(0xfff4f4f4);
  static Color grey2 = Color(0xfff8f9fe);
}
