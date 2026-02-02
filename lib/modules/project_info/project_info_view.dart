import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nate/utils/app_images.dart';

class ProjectInfoView extends StatelessWidget {
  const ProjectInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppImages.primarycolor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: Get.height*0.06,
              ),
              Row(children: [
              GestureDetector(
                onTap: () => Get.back(),
                child: Image.asset(AppImages.backicon,
                height: Get.height*0.07,
                ),
              ),
              SizedBox(width: Get.width*0.05,),
              Text('Project Info',
              style: GoogleFonts.openSans( 
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: Colors.white
              ),
              )
              ],),
              SizedBox(height: Get.height*0.02,),
              Text('Shipping Address',
              style: GoogleFonts.roboto( 
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Colors.white
              ),
              ),
              SizedBox(
                height: Get.height*0.02,
              ),
              Container(
                height: Get.height*0.05,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Color(0xffFFFFFF).withOpacity(0.8)
                  ),
                  borderRadius: BorderRadius.circular(12)
                ),
                child: TextFormField(
                  style: TextStyle(
                    color: Colors.white
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hint: Center(
                      child: Text('120 Baker Street, Los angeles CA 90012',
                      style: GoogleFonts.roboto( 
                        fontWeight: FontWeight.w400,
                        color: Colors.white
                      ),
                      ),
                    )
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}