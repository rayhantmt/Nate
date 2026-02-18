import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nate/utils/app_images.dart';

class PurchaseHistoryView extends StatelessWidget {
  const PurchaseHistoryView({super.key});

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
                Image.asset(AppImages.backicon,
                height: Get.height*0.06,
                ),
                SizedBox(width: Get.width*0.05,),
                Text('History',
                style: GoogleFonts.openSans( 
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: Colors.white
                ),
                )
              ],
            ),
            SizedBox(height: Get.height*0.04,),
            ListView.builder(itemBuilder: (context, index) => Container(
              height: Get.height*0.15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Colors.white.withOpacity(0.05)
              ),
            ),)
          ],
        ),
      ),
    );
  }
}