import 'package:flutter/material.dart';
import 'package:ui_challenge/view/details_page.dart';
import 'package:ui_challenge/view/home_screen.dart';
import 'package:ui_challenge/view/loading_page.dart';
import 'package:ui_challenge/view/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Challenge',
      debugShowCheckedModeBanner: false,
     routes: {
      "/":(context) => const LoadingScreen(),
      "/onboardingScreen":(context) => const OnboardingScreen(),
      "/homescreen":(context) => const HomeScreen(),
      "/details":(context) => const DetailsScreen()
     },
    );
  }
}
