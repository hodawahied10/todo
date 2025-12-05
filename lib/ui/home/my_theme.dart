import 'dart:ui';

import 'package:flutter/material.dart';

class MyTheme{
  static const Color lightPrimary=Color(0xFF5D9CEC);
  static const Color lightGray=Color(0xFFC8C9CB);
 // static const Color lightScaffoldBackgroundColor=Color(0xFF5D9CEC);
  static final lightTheme=ThemeData(
    colorScheme: ColorScheme.fromSeed(
        primary: lightPrimary, seedColor: lightPrimary,
        ),
      scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
     backgroundColor: lightPrimary,
      elevation: 0,
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.transparent,
   elevation: 0,
   selectedIconTheme: IconThemeData(
     color: lightPrimary,
     size:36
   ),
      unselectedIconTheme: IconThemeData(
        color:lightGray,
      )
    ),
    bottomSheetTheme: BottomSheetThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft:Radius.circular(18) ,
          topRight: Radius.circular(18) ,
        )
      )
    ),
    textTheme: TextTheme(
      headlineLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.black
      ),
      headlineMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
          color: Colors.black
      )
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style:ElevatedButton.styleFrom(
        backgroundColor: lightPrimary,
      )
    )
  );
}