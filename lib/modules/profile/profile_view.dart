import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nate/utils/app_images.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppImages.profileiamge,
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Padding(
            padding:EdgeInsets.only(left: 20,right: 20),
            child: Column(
              children: [
                SizedBox(height: Get.height*0.05,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Profile',
                    style:GoogleFonts.roboto( 
                      fontWeight: FontWeight.w700,
                      fontSize: 32,
                      color: Colors.white
                    ) ,
                    ),
                    Image.asset(AppImages.settingsicon,
                    height: Get.height*0.05,
                    width: Get.width*0.1,
                    )
                  ],
                ),
                SizedBox(height: Get.height*0.02,),
                CircleAvatar(
                  maxRadius: Get.height*0.07,
                  child: Image.asset(AppImages.profileiamge),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
