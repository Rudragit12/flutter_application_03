import 'package:flutter/material.dart';

class MyTheme {
  //dark theme
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.lightGreen,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          textTheme: Theme.of(context).textTheme,
        ),
      );

  //light theme
  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
      );
}
