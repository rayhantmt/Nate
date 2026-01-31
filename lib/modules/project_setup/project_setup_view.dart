import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nate/modules/new_proposal/new_proposal_controller.dart';
import 'package:nate/modules/project_setup/project_setup_controller.dart';
import 'package:nate/utils/app_images.dart';

class ProjectSetupView extends GetView<ProjectSetupController> {
  ProjectSetupView({super.key});
  final controller1 = Get.find<NewProposalController>();
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
                  SizedBox(width: Get.width * 0.05),
                  Text(
                    'Project Setup',
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: Get.height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: Get.height * 0.03,
                    width: Get.width * 0.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xff000000),
                    ),
                  ),
                   Container(
                    height: Get.height * 0.03,
                    width: Get.width * 0.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xff000000),
                    ),
                  ),
                ],
              ),
              SizedBox(height: Get.height*0.02,),
              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(12),
                child: Image.file(
                  File(controller1.pickedimage.value!.path),
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
