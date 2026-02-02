import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nate/utils/app_images.dart';

class ProjectInfoView extends StatelessWidget {
  const ProjectInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppImages.primarycolor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(children: [
              Image.asset(AppImages.backicon,
              height: Get.height*0.07,
              )
              ],)
            ],
          ),
        ),
      ),
    );
  }
}