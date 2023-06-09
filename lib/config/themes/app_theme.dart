import 'package:flutter/material.dart';
import 'package:quote_app/core/utils/app_colors.dart';
import 'package:quote_app/core/utils/app_strings.dart';



ThemeData appTheme (){
  return ThemeData(
    primaryColor: AppColors.primary,
    hintColor: AppColors.hint,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    fontFamily: AppStrings.fontFamily,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      color: Colors.transparent,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
    ),
    textTheme:  const TextTheme(
      bodyMedium: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontSize: 22,
        height: 1.3,
      ),

    ),
  );
}

