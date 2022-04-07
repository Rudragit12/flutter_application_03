import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyThemes {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.green,
        cardColor: Colors.white,
        canvasColor: creamColor,
        // ignore: deprecated_member_use
        buttonColor: DarkGreen,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          toolbarTextStyle: Theme.of(context).textTheme.bodyText2,
          titleTextStyle: Theme.of(context).textTheme.headline6,
        ),
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.green,
        cardColor: Colors.black,
        canvasColor: darkCreamColor,
        // ignore: deprecated_member_use
        buttonColor: lightGreen,
        appBarTheme: AppBarTheme(
          color: Colors.black,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.white),
          toolbarTextStyle: Theme.of(context).textTheme.bodyText2,
          titleTextStyle: Theme.of(context).textTheme.headline6,
        ),
      );

  //color

  static Color DarkGreen = Color(0xff006400);
  static Color ForestGreen = Color(0xff228B22);
  static Color creamColor = Color(0xfff5f5f5);
  static Color darkCreamColor = Vx.gray900;
  static Color lightGreen = Vx.green400;
}
