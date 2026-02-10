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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: Get.height*0.06,),
              Row(
                children: [
                  GestureDetector(
                    onTap: () => Get.back(),
                    child: Image.asset(AppImages.backicon,
                    height: Get.height*0.06,
                    ),
                  ),SizedBox(width: Get.width*0.04,),
              Text('Project Details',
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: Colors.white
              ),
              ),
                ],
              ),
              
              SizedBox(height: Get.height*0.02,),
              Text('Shipping Address',
              style: GoogleFonts.roboto( 
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Colors.white
              ),
              ),
              Text('120 Baker Street, Los Angeles, CA 90012',
              style: GoogleFonts.roboto( 
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Colors.white
              ),
              ),
              SizedBox(
                height: Get.height*0.05,
              ),
              Text('Order Details',
              style: GoogleFonts.roboto( 
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Colors.white
              ),
              )
            ],
          ),
        ),
      ),
    );
  }
}