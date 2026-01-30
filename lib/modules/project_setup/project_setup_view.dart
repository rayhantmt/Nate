import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nate/utils/app_images.dart';

class ProjectSetupView extends StatelessWidget {
  const ProjectSetupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppImages.primarycolor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: Get.height*0.07,
            ),
            
          ],
        ),
      ),
    );
  }
}