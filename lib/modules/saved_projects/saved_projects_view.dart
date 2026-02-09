import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nate/utils/app_images.dart';

class SavedProjectsView extends StatelessWidget {
  const SavedProjectsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: Get.height*0.07,
          ),
          Row(
            children: [
              Image.asset(AppImages.backicon),
              SizedBox(
                width: Get.width*0.05,
              ),
              Text('Saved Projects',
              style: GoogleFonts.openSans( 
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: Colors.white
              ),
              )
            ],
          )
        ],
      ),
    );
  }
}