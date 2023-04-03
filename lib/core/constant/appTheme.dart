import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'colors.dart';

ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: AppColor.lightColor,
   // brightness: Brightness.light,
  primarySwatch: ColorApp.primary,
  bottomNavigationBarTheme : BottomNavigationBarThemeData(

  ),
  colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: AppColor.primary,
      onPrimary: AppColor.lightColor,
      secondary: AppColor.primary,
      onSecondary: AppColor.lightColor,
      error: AppColor.dangars,
      onError: AppColor.dangars,
      background: AppColor.dangars,
      onBackground: AppColor.lightColor,
      surface: Colors.teal,
      onSurface: Colors.teal),
  appBarTheme: const AppBarTheme(
      color: AppColor.lightColor,
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25,
        color: AppColor.lightColor,
      ),
      elevation: 2,
      centerTitle: true,
      systemOverlayStyle: SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarColor: AppColor.primarye),
      iconTheme: IconThemeData(color: AppColor.primary)),
  textTheme: const TextTheme(
    headline1: TextStyle(
        fontSize: 25, fontWeight: FontWeight.bold, color: AppColor.primary),
    bodyText1: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 16, color: AppColor.gray),
    bodyText2: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 10, color: AppColor.gray),
    button: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 18,
      color: AppColor.primary,
    ),
    headline4: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: AppColor.darkColor),
    headline3: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: AppColor.primary),
    headline5: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 13,
      color: AppColor.primary,
    ),
  ),
    iconTheme: const IconThemeData(
      color: AppColor.gray,
    ),
    tabBarTheme: TabBarTheme(
      labelColor: AppColor.lightColor,
    )
);

ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: AppColor.darkColor,
 // brightness: Brightness.dark,
  primarySwatch: ColorApp.secondary,
  colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: AppColor.secondary,
      onPrimary: AppColor.lightColor,
      secondary: AppColor.secondary,
      onSecondary: AppColor.lightColor,
      error: AppColor.dangars,
      onError: AppColor.dangars,
      background: AppColor.dangars,
      onBackground: AppColor.lightColor,
      surface: Colors.teal,
      onSurface: Colors.teal),
  appBarTheme: const AppBarTheme(
      color: AppColor.darkColor,
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25,
        color: AppColor.secondary,
      ),
      elevation: 20,
      centerTitle: true,
      systemOverlayStyle: SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.light,
          statusBarColor: AppColor.darkColor),
      iconTheme: IconThemeData(color: AppColor.secondary)),
  textTheme: const TextTheme(
      headline1: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: AppColor.secondary),
       headline4: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: AppColor.lightColor),
      bodyText1: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 16, color: AppColor.gray),
      bodyText2:  TextStyle(
          fontWeight: FontWeight.bold, fontSize: 10, color: AppColor.gray),
      button: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18,
        color: AppColor.secondary,
      ),
      headline5: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 17,
        color: AppColor.primary,
      ),
      headline3: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: AppColor.secondary),
      labelMedium: TextStyle(
          color: AppColor.secondary
      )
  ),
  iconTheme: const IconThemeData(
    color: AppColor.gray,
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: UnderlineInputBorder(
      borderRadius: BorderRadius.circular(15),
    ),
  ),
    tabBarTheme: TabBarTheme(
      labelColor: AppColor.lightColor,
    )
);
