import 'package:flutter/material.dart';
import 'package:nate/utils/app_images.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(AppImages.splash,
      fit: BoxFit.cover,
      ),
    );
  }
}