import 'package:flutter/material.dart';
import 'package:nate/common_widgets/profile_container.dart';
import 'package:nate/utils/app_images.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [

            ProfileContainer(tittle: 'Change Password', image: AppImages.changepass)
          ],
        ),
      ),
    );
  }
}