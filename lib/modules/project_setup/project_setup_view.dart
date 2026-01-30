import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nate/modules/new_proposal/new_proposal_controller.dart';
import 'package:nate/utils/app_images.dart';

class ProjectSetupView extends StatelessWidget {
  ProjectSetupView({super.key});
  final controller = Get.find<NewProposalController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppImages.primarycolor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: Get.height * 0.07),
              Row(
                children: [
                  GestureDetector(
                    onTap: () => Get.back(),
                    child: Image.asset(
                      AppImages.backicon,
                      height: Get.height * 0.04,
                    ),
                  ),
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(12),
                child: Image.file(
                  File(controller.pickedimage.value!.path),
                  height: Get.height * 0.4,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
