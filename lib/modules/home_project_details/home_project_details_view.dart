import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nate/utils/app_images.dart';

class HomeProjectDetailsView extends StatelessWidget {
  const HomeProjectDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppImages.primarycolor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(AppImages.backicon,
            height: Get.height*0.04,
            ),
            SizedBox(width: Get.width*0.04,),
            Text('Project Details',
            style: GoogleFonts.openSans(
              fontWeight: FontWeight.w700,
              fontSize: 20,
              color: Colors.white
            ),
            )
          ],
        ),
      ),
    );
  }
}