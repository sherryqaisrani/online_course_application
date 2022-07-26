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
        color: aLightTextColor,
        fontWeight: FontWeight.bold,
      ),
      headline6: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.bold,
        color: aLightTextColor,
      ),
      bodyText1: TextStyle(
        fontSize: 12.sp,
        color: aLightTextColor,
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
    color: aLightTextColor,
    size: 30.w,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: aLightPrimary,
      selectedItemColor: aLightGreen,
      selectedIconTheme: IconThemeData(
        color: aLightGreen,
        size: 24.w,
      ),
      unselectedItemColor: aLightGrayColor,
      unselectedIconTheme: IconThemeData(
        color: aLightGrayColor,
        size: 24.w,
      ),
      selectedLabelStyle: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.bold,
        color: aLightGreen,
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.bold,
        color: aLightTextColor,
      )),
  inputDecorationTheme: InputDecorationTheme(
    border: outlineInputBorder,
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    filled: true,
    fillColor: aLightPrimary,
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
      primary: aLightYellow,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          19.r,
        ),
        side: const BorderSide(
          color: Colors.transparent,
          width: 0,
        ),
      ),
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
