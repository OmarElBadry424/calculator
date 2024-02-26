import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const Color notWhite = Color(0xFFEDF0F2);
  static const Color darkCon = Color(0xFF5F4F42);
  static const Color darkNu = Color(0xFF7C6B5B);
  static const Color buttonDark = Color(0xff7C5643);
  static const Color darkBack = Color(0xff3D2D1E);
  static const Color liteBack = Color(0xffF9F6EF);
  static const Color liteCon = Color(0xffF4EAE0);
  static const Color liteBu = Color(0xFFF7B59F);
  static const Color liteNu = Color(0xFFF3DFC7);
  static const Color darkMood = Color(0xFF2B2B2B);
  static const Color red = Colors.red;
  static const Color nearlyWhite = Color(0xFFC8CAF5);
  static const Color white = Color(0xFFFFFFFF);
  static  const  Color  primaryColor =Color(0xFF84207E);
  static  const  Color  secondColor =Color(0xFFAF34AD);

  static  const  Color  backgroundColor =Color(0xFFF8F5FE);
  static  const  Color  black =Color(0xFF000000);
  static  const  Color  textColor =Color(0xFFF9B327);
  static  const  Color  noteColor =Color(0xFFF6DAA0);
  static const Color notActive = Color(0xFFE7D3E6);



  static const Color nearlyBlack = Color(0xFF213333);
  static const Color grey = Color(0xFF3A5160);
  static const Color greyBetween = Color(0xFFA0A0A8);

  static const Color greyLite = Color(0xFFF5F4F7);

  static const Color dark_grey = Color(0xFF313A44);

  static const Color darkText = Color(0xFF253840);
  static const Color darkerText = Color(0xFF17262A);
  static const Color lightText = Color(0xFF4A6572);
  static const Color deactivatedText = Color(0xFF767676);
  static const Color dismissibleBackground = Color(0xFF364A54);
  static const Color chipBackground = Color(0xFFEEF1F3);
  static const Color spacer = Color(0xFFF2F2F2);
  static const String fontName = 'WorkSans';

  static const TextTheme textTheme = TextTheme(
    headline4: display1,
    headline5: headline,
    headline6: title,
    subtitle2: subtitle,
    bodyText2: body2,
    bodyText1: body1,
    caption: caption,
  );

  static const TextStyle display1 = TextStyle( // h4 -> display1
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: 36,
    letterSpacing: 0.4,
    height: 0.9,
    color: primaryColor,
  );

  // static const MaterialButton display2 = Color(
  //   // fontFamily: fontName,
  //   // fontWeight: FontWeight.bold,
  //   // fontSize: 36,
  //   // letterSpacing: 0.4,
  //   // height: 0.9,
  //   color: primaryColor,
  // );

  static const TextStyle headline = TextStyle( // h5 -> headline
    fontFamily: fontName,
    fontWeight: FontWeight.w200,
    fontSize: 20,
    letterSpacing: 0.27,
    color: white,
  );

  static const TextStyle title = TextStyle( // h6 -> title
    fontFamily: fontName,
    fontWeight: FontWeight.bold,
    fontSize: 26,
    letterSpacing: 0.18,
    color: darkerText,
  );

  static const TextStyle subtitle = TextStyle( // subtitle2 -> subtitle
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: -0.04,
    color: darkText,
  );

  static const TextStyle body2 = TextStyle( // body1 -> body2
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: 0.2,
    color: primaryColor,
  );

  static const TextStyle body1 = TextStyle( // body2 -> body1
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 16,
    letterSpacing: -0.05,
    color: darkText,
  );

  static const TextStyle caption = TextStyle( // Caption -> caption
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 12,
    letterSpacing: 0.2,
    color: lightText, // was lightText
  );

}