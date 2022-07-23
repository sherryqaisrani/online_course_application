import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_courses/utils/colors.dart';
import 'package:online_courses/utils/constants.dart';

final lightTheme = ThemeData.light().copyWith(
  scaffoldBackgroundColor: aLightBackGround,
  backgroundColor: aLightPrimary,
  cardColor: aLightPrimary,
  textTheme: GoogleFonts.redHatDisplayTextTheme(
    const TextTheme().copyWith(
      headline1: TextStyle(
        fontSize: 32.sp,
        fontWeight: FontWeight.bold,
        color: aLightTextColor,
      ),
      headline2: TextStyle(
        fontSize: 22.sp,
        fontWeight: FontWeight.bold,
        color: aLightTextColor,
      ),
      headline3: TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.bold,
        color: aLightTextColor,
      ),
      headline4: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.bold,
        color: aLightTextColor,
      ),
      headline5: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.bold,
        color: aLightTextColor,
      ),
      headline6: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.bold,
        color: aLightTextColor,
      ),
      bodyText1: TextStyle(
        fontSize: 12.sp,
        color: aLightTextColor1,
      ),
      subtitle1: TextStyle(
        fontSize: 12.sp,
        color: aLightTextColor1,
      ),
      button: TextStyle(
        fontSize: 12.sp,
        color: aLightPrimary,
      ),
    ),
  ),
  iconTheme: IconThemeData(
    color: aLightPrimary,
    size: 30.w,
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: outlineInputBorder,
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    filled: true,
    fillColor: aLightBackGround,
    contentPadding: EdgeInsets.symmetric(
      vertical: 16.h,
    ),
    hintStyle: TextStyle(
      fontSize: 14.sp,
      color: aLightTextColor1,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      textStyle: TextStyle(
        fontSize: 12.sp,
        color: aLightPrimary,
      ),
    ),
  ),
  colorScheme: const ColorScheme.light().copyWith(
    background: aLightBackGround,
    primary: aLightPrimary,
    secondary: aLightGray,
    surface: aLightYellow,
  ),
);
