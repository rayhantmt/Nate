import 'package:flutter/material.dart';
import 'package:nate/utils/app_images.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [Image.asset(AppImages.profileiamge,
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
      )]),
    );
  }
}
