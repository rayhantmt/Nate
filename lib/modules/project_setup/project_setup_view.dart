import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nate/common_widgets/new_proposal_container.dart';
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
        physics: AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                  Obx(
                    () => Container(
                      height: Get.height * 0.04,
                      width: Get.width * 0.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color(0xff000000),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () => controller.toggle(),
                            child: Text(
                              'Frame',
                              style: TextStyle(
                                color: controller.framed.value
                                    ? Colors.red
                                    : Colors.white,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () => controller.toggle(),
                            child: Text(
                              'No Frame',
                              style: TextStyle(
                                color: controller.framed.value
                                    ? Colors.white
                                    : Colors.red,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Obx(
                    () => Container(
                      height: Get.height * 0.04,
                      width: Get.width * 0.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color(0xff000000),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () => controller.toggle2(),
                            child: Text(
                              'Painted',
                              style: TextStyle(
                                color: controller.painted.value
                                    ? Colors.red
                                    : Colors.white,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () => controller.toggle2(),
                            child: Text(
                              'Unpainted',
                              style: TextStyle(
                                color: controller.painted.value
                                    ? Colors.white
                                    : Colors.red,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: Get.height * 0.02),
              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(12),
                child: Image.file(
                  File(controller1.pickedimage.value!.path),
                  height: Get.height * 0.4,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: Get.height * 0.02),
              Text(
                'Length',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
              Container(
                height: Get.height * 0.05,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(width: 1, color: Color(0xffFFFFFFCC)),
                ),
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(border: InputBorder.none),
                ),
              ),
              SizedBox(height: Get.height * 0.02),
              Text(
                'width',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
              Container(
                height: Get.height * 0.05,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(width: 1, color: Color(0xffFFFFFFCC)),
                ),
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(border: InputBorder.none),
                ),
              ),
              Obx(
                () => SizedBox(
                  height:  Get.height*0.4,
                  child: Container(
                    decoration: BoxDecoration(),
                    child: Column(
                      children: [
                        Text(
                          'Choose Color',
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: Get.height * 0.02),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            NewProposalContainer(
                              tittle: 'MF Red',
                              c: Color(0xffED1B30),
                            ),
                            NewProposalContainer(
                              tittle: 'MF Black',
                              c: Color(0xff231F20),
                            ),
                            NewProposalContainer(
                              tittle: 'Yellow',
                              c: Color(0xffFAB812),
                            ),
                          ],
                        ),
                        SizedBox(height: Get.height * 0.02),
                        Row(
                          children: [
                            NewProposalContainer(
                              tittle: 'Orange',
                              c: Color(0xffF58020),
                            ),
                            NewProposalContainer(
                              tittle: 'Slate Grey',
                              c: Color(0xff789FBB),
                            ),
                            NewProposalContainer(
                              tittle: 'Powder Blue',
                              c: Color(0xff789FBB),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
