import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nate/utils/app_images.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:  SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(AppImages.backicon,
                height:Get.height*0.1,
                    width: Get.width*0.15,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}