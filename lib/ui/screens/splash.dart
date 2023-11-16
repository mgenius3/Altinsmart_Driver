import 'dart:convert';
import 'package:flutter/material.dart';
import 'dart:async';
import "package:altinsmart_driver/ui/theme/colors.dart";
import 'package:go_router/go_router.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  startTimer() {
    Timer(Duration(seconds: 3), () async {
      context.go('/signup');
    });
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: primaryColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Image.asset(
            'public/images/altinsmart_icon.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
