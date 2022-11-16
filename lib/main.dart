import 'package:flutter/material.dart';
import 'package:proxycommerceapp/LoginScreen.dart';
import 'package:proxycommerceapp/RegisterationScreen.dart';
import 'package:proxycommerceapp/homepage.dart';
import 'package:proxycommerceapp/welcomescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: welcomescreen.id,
      routes: {
        welcomescreen.id: (context) => welcomescreen(),
        registeratioScreen.id: ((context) => registeratioScreen()),
        LoginScreen.id: ((context) => LoginScreen()),
        homepage.id: ((context) => homepage())
      },
    );
  }
}
