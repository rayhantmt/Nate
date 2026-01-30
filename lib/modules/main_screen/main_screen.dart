import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nate/modules/home/home_view.dart';
import 'package:nate/modules/main_screen/main_screen_controller.dart';
import 'package:nate/modules/new_proposal/new_proposal_view.dart';
import 'package:nate/modules/profile/profile_view.dart';
import 'package:nate/utils/app_images.dart';

class MainScreen extends GetView<MainScreenController> {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // 1. ADD THIS: This defines the size of the Stack
          Obx(() {
            if (controller.memorytype == 0) {
              return ProfileView();
            } else if (controller.memorytype == 1) {
              return HomeView();
            } else
              return NewProposalView();
          }),

          Positioned(
            bottom: Get.height * 0.05,
            left: Get.width * 0.2,
            right: Get.width * 0.2,
            child: Obx(() =>Container(
              height: Get.height * 0.08,
             // width: Get.width*0.1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: const Color(0xff3B3D3D),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () => controller.setDepositType(1),
                    child: Image.asset(AppImages.homebottomicon,color: controller.memorytype ==1?Color(0xffEC1B34):Colors.white),
                  ),
                  GestureDetector(
                    onTap: () => controller.setDepositType(2),
                    child: Image.asset(AppImages.plusbottomicon,color: controller.memorytype ==2?Color(0xffEC1B34):Colors.white),
                  ),
                  GestureDetector(
                    onTap: () => controller.setDepositType(0),
                    child: Image.asset(AppImages.profilebottomlogo,color: controller.memorytype ==0?Color(0xffEC1B34):Colors.white),
                  ),
                ],
              ),
            ),)
          ),
        ],
      ),
    );
  }
}
