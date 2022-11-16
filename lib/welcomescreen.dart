import 'dart:async';

import 'package:flutter/material.dart';
import 'package:proxycommerceapp/LoginScreen.dart';
import 'package:proxycommerceapp/RegisterationScreen.dart';
import 'package:firebase_core/firebase_core.dart';

class welcomescreen extends StatefulWidget {
  static const String id = 'welcome_screen';

  @override
  State<welcomescreen> createState() => _welcomescreenState();
}

class _welcomescreenState extends State<welcomescreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    Firebase.initializeApp().whenComplete(() {
      print("completed");
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Column(
        children: [
          SizedBox(
            height: 300,
          ),
          Center(
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              child: Text('Ecommerce Demo'),
            ),
          ),
          SizedBox(
            height: 48.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Material(
              elevation: 5.0,
              color: Colors.lightBlueAccent,
              borderRadius: BorderRadius.circular(30.0),
              child: MaterialButton(
                onPressed: () {
                  //Go to login screen.
                  Navigator.pushNamed(context, LoginScreen.id);
                },
                minWidth: 200.0,
                height: 42.0,
                child: Text(
                  'Log In',
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Material(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(30.0),
              elevation: 5.0,
              child: MaterialButton(
                onPressed: () {
                  //Go to registration screen.

                  Navigator.pushNamed(context, registeratioScreen.id);
                },
                minWidth: 200.0,
                height: 42.0,
                child: Text(
                  'Register',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
