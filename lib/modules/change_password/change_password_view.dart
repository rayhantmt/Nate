import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/state_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nate/modules/change_password/change_password_controller.dart';
import 'package:nate/utils/app_images.dart';

class ChangePasswordView extends GetView<ChangePasswordController> {
  const ChangePasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff17191A),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: Get.height*0.06,),
              Row(
                children: [
                  Image.asset(AppImages.backicon,
                  height: Get.height * 0.05,
                      width: Get.width * 0.1,
                  ),
                  SizedBox(width: Get.width*0.07,),
                  Text('Change Password',
                  style: GoogleFonts.openSans( 
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: Colors.white
                  ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}