import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nate/utils/app_images.dart';

class QuoteSummaryView extends StatelessWidget {
  const QuoteSummaryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppImages.primarycolor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: Get.height*0.07,),
            Row(
              children: [
                GestureDetector(
                  onTap: () => Get.back(),
                  child: Image.asset(AppImages.backicon,
                  height: Get.height*0.08,
                  ),
                ),
                SizedBox(width: Get.width*0.1,),
                Text('Quote Summary',
                style: GoogleFonts.openSans( 
                  color: Colors.white
                ),
                ),
              ],
            ),
            SizedBox(height: Get.height*0.05,),
            Container(
              height: Get.height*0.45,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xff999999).withOpacity(0.3)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Image.asset(AppImages.homelogo,
                    height: Get.height*0.1,
                    ),
                    SizedBox(height: Get.height*0.05,),
                    Text('120 Baker Street, Los Angeles, CA 90012',
                    style: GoogleFonts.roboto( 
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.white
                    ),
                    ),
                    SizedBox(height: Get.height*0.02,),
                    Row(
                      children: [
                        Text('Order Details:',
                        style: GoogleFonts.roboto( 
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.white
                        ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}