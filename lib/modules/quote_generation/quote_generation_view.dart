import 'package:flutter/material.dart';
import 'package:nate/utils/app_images.dart';

class QuoteGenerationView extends StatelessWidget {
  const QuoteGenerationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppImages.primarycolor,
      body: Column(
        children: [
          Image.asset(AppImages.homelogo)
        ],
      ),
    );
  }
}