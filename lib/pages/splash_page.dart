import 'dart:async';

import 'package:flutter/material.dart';
import 'package:madical_app/pages/color.dart';

import 'login_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(milliseconds: 5000), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LoginPage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [deepPurpleColors, deepPurpleLightColors],
            end: Alignment.bottomCenter,
            begin: Alignment.topCenter,
          ),
          color: Colors.white,
        ),
        child: Center(
          child: Image.asset('lib/icons/logo.png'),
        ),
      ),
    );
  }
}
