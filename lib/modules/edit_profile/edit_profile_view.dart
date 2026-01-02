import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/state_manager.dart';
import 'package:nate/modules/edit_profile/edit_profile_controller.dart';
import 'package:nate/utils/app_images.dart';

class EditProfileView extends GetView<EditProfileController> {
  const EditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff17191A),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: Get.height*0.07,),
              Row(
                children: [
                  Image.asset(AppImages.backicon,
                     height: Get.height * 0.05,
                      width: Get.width * 0.1,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}