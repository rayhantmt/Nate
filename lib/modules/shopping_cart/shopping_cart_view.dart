import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nate/utils/app_images.dart';

class ShoppingCartView extends StatelessWidget {
  const ShoppingCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppImages.primarycolor,
      body: Column(
        children: [
          SizedBox(
            height: Get.height*0.06,
          ),
          Row(
            children: [
              Image.asset(AppImages.backicon,
              height: Get.height*0.06,
              ),
              SizedBox(width: Get.width*0.05,),
              Text('Shopping Cart',
              style: GoogleFonts.openSans( 
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: Colors.white
              ),
              ),
            ],
          )
        ],
      ),
    );
  }
}