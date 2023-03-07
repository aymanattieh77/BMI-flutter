import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:bmi/screens/homepage.dart';
import 'package:flutter/material.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({super.key});

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: 'assets/images/bmi.png',
      nextScreen: const MyHomePage(),
      duration: 3000,
      backgroundColor: const Color(0xff1d2334),
      splashIconSize: 50,
      splashTransition: SplashTransition.rotationTransition,
    );
  }
}
