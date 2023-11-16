import 'package:altinsmart_driver/ui/screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:altinsmart_driver/ui/screens/auth/signup.dart';
import 'package:altinsmart_driver/ui/screens/auth/signin.dart';
import 'package:altinsmart_driver/ui/screens/auth/personal_details.dart';
import 'package:altinsmart_driver/ui/screens/auth/transport_details.dart';
import 'package:altinsmart_driver/ui/screens/auth/verify_identity.dart';
import 'package:altinsmart_driver/ui/screens/auth/privacy_policy.dart';

final GoRouter gorouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const Splash();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'signup',
          builder: (BuildContext context, GoRouterState state) {
            return const SignUp();
          },
        ),
        GoRoute(
          path: 'signin',
          builder: (BuildContext context, GoRouterState state) {
            return const SignIn();
          },
        ),
        GoRoute(
          path: 'pdetails',
          builder: (BuildContext context, GoRouterState state) {
            return const PersonalDetails();
          },
        ),
        GoRoute(
          path: 'tdetails',
          builder: (BuildContext context, GoRouterState state) {
            return const TransportDetails();
          },
        ),
        GoRoute(
          path: 'videntity',
          builder: (BuildContext context, GoRouterState state) {
            return const VerifyIdentity();
          },
        ),
        GoRoute(
          path: 'ppolicy',
          builder: (BuildContext context, GoRouterState state) {
            return const PrivacyPolicy();
          },
        ),
      ],
    ),
  ],
);
