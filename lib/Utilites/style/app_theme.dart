import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app_color.dart';


class Themes {
  static ThemeData lightTheme = ThemeData(
    colorScheme: const ColorScheme.light(
      // primary: AppTheme.primaryColor,
        primary: AppTheme.liteNu,
        primaryContainer: AppTheme.liteCon),
    iconTheme: const IconThemeData(color: AppTheme.grey),
    buttonTheme: const ButtonThemeData(buttonColor: AppTheme.primaryColor),
    scaffoldBackgroundColor: AppTheme.liteBack,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppTheme.red,
      systemOverlayStyle: SystemUiOverlayStyle(
        // the place of wifi card batrry
        statusBarColor: AppTheme.red,
      ),
    ),
    dialogBackgroundColor: AppTheme.greyBetween,
    toggleButtonsTheme: const ToggleButtonsThemeData(
        selectedBorderColor: Colors.transparent,
        borderColor: Colors.transparent,
        fillColor: AppTheme.black),
    checkboxTheme: CheckboxThemeData(
      checkColor: MaterialStateProperty.all(Colors.pink),
      fillColor: MaterialStateProperty.all(AppTheme.textColor),
    ),
  );
  static ThemeData darkTheme = ThemeData(
    colorScheme: const ColorScheme.dark(
        primary: AppTheme.darkNu, primaryContainer: AppTheme.darkCon),
    iconTheme: const IconThemeData(
      color: AppTheme.white,
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor:
      AppTheme.red, // Change this to the desired color for dark theme
    ),
    scaffoldBackgroundColor: AppTheme.darkMood,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppTheme.greyLite,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: AppTheme.greyLite,
      ),
    ),
    dialogBackgroundColor: AppTheme.greyBetween,
    toggleButtonsTheme: const ToggleButtonsThemeData(
      selectedBorderColor: Colors.transparent,
      borderColor: Colors.transparent,
      fillColor: AppTheme.black,
    ),
    checkboxTheme: CheckboxThemeData(
      checkColor: MaterialStateProperty.all(Colors.pink),
      fillColor: MaterialStateProperty.all(AppTheme.textColor),
    ),
  );
}
