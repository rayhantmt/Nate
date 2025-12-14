import 'package:flutter/material.dart';
import 'package:nate/utils/app_images.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(AppImages.splash,
      fit: BoxFit.cover,
      ),
    );
  }
}