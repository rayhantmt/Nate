import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: Get.height*0.05,),
              Row(
                children: [
                  Image.asset(AppImages.homelogo,
                  height: Get.height*0.15,
                  width: Get.width*0.30,
                  ),
                  Image.asset(AppImages.profileimg)
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}