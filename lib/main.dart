import 'package:flutter/material.dart';
import 'package:flutter_application_03/Widgets/MyTheme.dart';
import 'package:flutter_application_03/pages/CartPage.dart';
import 'package:flutter_application_03/pages/homepage.dart';
import 'package:flutter_application_03/pages/loginpage.dart';
import 'package:flutter_application_03/utils/MyRoutes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: HomePage(),
      themeMode: ThemeMode.system,
      theme: MyThemes.lightTheme(context),
      darkTheme: MyThemes.darkTheme(context),

      debugShowCheckedModeBanner: false,

      initialRoute: MyRoutes.homeRoute,
      routes: {
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => Login_page(),
        MyRoutes.cartPageRoute: (context) => CartPage(),
      },
    );
  }
}
