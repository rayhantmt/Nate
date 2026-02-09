import 'package:flutter/material.dart';
import 'package:nate/utils/app_images.dart';

class HomeProjectDetailsView extends StatelessWidget {
  const HomeProjectDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppImages.primarycolor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(AppImages.backicon)
          ],
        ),
      ),
    );
  }
}