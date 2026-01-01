import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nate/utils/app_images.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height*0.05,
      width: Get.width*0.9,
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF).withOpacity(0.1),
borderRadius: BorderRadius.circular(12)
      ),
      child: Row(
        children: [
          Image.asset(AppImages.backicon)
        ],
      ),
    );
  }
}