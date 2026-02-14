import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nate/common_widgets/common_button.dart';
import 'package:nate/utils/app_images.dart';
import 'package:nate/utils/app_pages.dart';

class AfterQuoteSummaryView extends StatelessWidget {
  const AfterQuoteSummaryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppImages.primarycolor,
      body: Column(
        children: [
          SizedBox(height: Get.height*0.15,),
          Text('Added to shopping cart',
          style: GoogleFonts.openSans( 
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: Colors.white
          ),
          ),
          SizedBox(height: Get.height*0.05,),
          GestureDetector(
            onTap: () => Get.toNamed(AppPages.mainscreen),
            child: CommonButton(tittle: 'Create another project')),
          SizedBox(height: Get.height*0.05,),
          GestureDetector(
            onTap: () => Get.toNamed(AppPages.shoppingcart),
            child: CommonButton(tittle: 'Make Payment')),
        ],
      ),
    );
  }
}