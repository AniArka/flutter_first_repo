import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData get themeData => ThemeData(
      primarySwatch: Colors.purple,
      appBarTheme: AppBarTheme(
        color: Colors.purple,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white),
        titleTextStyle: TextStyle(
          color: Colors.white,
        ),
      ));
}
