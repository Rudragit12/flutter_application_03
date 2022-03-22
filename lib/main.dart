import 'package:flutter/material.dart';
import 'package:flutter_application_03/pages/homepage.dart';
import 'package:flutter_application_03/pages/loginpage.dart';
import 'package:flutter_application_03/utils/MyRoutes.dart';
import 'package:flutter_application_03/widgets/MyTheme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: HomePage(),
      // themeMode: ThemeMode.dark,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),

      debugShowCheckedModeBanner: false,

      initialRoute: MyRoutes.homeRoute,
      routes: {
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => Login_page(),
      },
    );
  }
}
