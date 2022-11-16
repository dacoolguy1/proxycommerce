import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
//final _auth = FirebaseAuth.instance; //Create an instance (object) of auth

final _firestore = FirebaseFirestore.instance;
late User loggedinUser;

class homepage extends StatefulWidget {
  static const String id = 'homepage';

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  final _auth = FirebaseAuth.instance; //Create an instance (object) of auth

  late String messageText;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() async {
    final user = await _auth.currentUser;

    try {
      if (user != null) {
        loggedinUser = user;
        print(loggedinUser.email);
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
