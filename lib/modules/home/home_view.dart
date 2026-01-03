import 'package:flutter/material.dart';
import 'package:nate/utils/app_images.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(AppImages.mainhomebackground,
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.cover,
        )
      ],
    );
  }
}