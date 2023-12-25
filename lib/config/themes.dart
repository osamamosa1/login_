import 'package:clean_arch/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
      appBarTheme: AppBarTheme(
          centerTitle: true,
          color: Colors.transparent,
          elevation: 0,
          titleTextStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
      primaryColor: AppColors.primaryColor,
      hintColor: AppColors.blackColor,
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
      fontFamily: 'BebasNeue',
      textTheme: TextTheme(
          button: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)));
}
