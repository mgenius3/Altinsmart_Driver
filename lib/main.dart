import 'package:flutter/material.dart';
import './ui/screens/splash.dart';
import 'package:altinsmart_driver/ui/theme/colors.dart';
import './routes.dart';
import 'package:go_router/go_router.dart';
import 'package:altinsmart_driver/ui/theme/apptheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final router = gorouter;

    return MaterialApp.router(
        routerConfig: router, title: 'Altinsmart Driver', theme: appTheme);
  }
}
