import 'package:fluttertokners/app.dart';
import 'package:fluttertokners/gen/colors.gen.dart';
import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: ColorName.backgroundColor,
    fontFamily: FontFamily.hankenGrotesk,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(color: ColorName.accentLightColor),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: ColorName.colorE7131A,
      disabledColor: ColorName.gray70,
    ),
    textTheme: _buildTextTheme(),
    bottomSheetTheme: const BottomSheetThemeData(backgroundColor: Colors.transparent) );


final ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.blueGrey,
    scaffoldBackgroundColor: ColorName.backgroundColor,
    fontFamily: FontFamily.hankenGrotesk,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(color: ColorName.white),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: ColorName.colorE7131A,
      disabledColor: ColorName.gray70,
    ),
    textTheme: _buildTextTheme(),
    bottomSheetTheme: const BottomSheetThemeData(backgroundColor: Colors.transparent) );

TextTheme _buildTextTheme() {
  return const TextTheme(
      displayLarge: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 32.0,
        fontFamily: FontFamily.jost,
      ),
    displayMedium: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 24.0,
      fontFamily: FontFamily.jost,
    ),
    displaySmall: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 20.0,
      fontFamily: FontFamily.jost,
    ),
    headlineMedium: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 18.0,
    ),
    headlineSmall: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 16.0,
    ),
    titleLarge: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 16.0,
    ),
    titleMedium: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 18.0,
    ),
    titleSmall: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 16.0,
    ),
    bodyLarge: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 16.0,
    ),
    bodyMedium: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 14.0,
    ),
    bodySmall: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 12.0,
    ),
    labelLarge: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 14.0,
    ),
    labelMedium: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 12.0,
    ),
    labelSmall: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 12.0,
    ),
  );
}

