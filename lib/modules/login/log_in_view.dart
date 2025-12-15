import 'package:flutter/material.dart';
import 'package:nate/utils/app_images.dart';

class LogInView extends StatelessWidget {
  const LogInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffADADAD),
    body: SafeArea(
      child: Column(
        children: [
          Image.asset(AppImages.login)
        ],
      ),
    ),
    );
  }
}