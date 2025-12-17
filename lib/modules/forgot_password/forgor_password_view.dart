import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nate/common_widgets/common_button.dart';
import 'package:nate/common_widgets/textfield.dart';
import 'package:nate/utils/app_images.dart';

class ForgorPasswordView extends StatelessWidget {
  const ForgorPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Column(
              children: [
                Row(
              children: [
                GestureDetector(
                  onTap: () => Get.back(),
                  child: Image.asset(AppImages.backicon,
                  height:Get.height*0.1,
                  width: Get.width*0.15,
                  ),
                ),
                SizedBox(width: Get.width*0.05,),
                Text('Forgot Password',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: Colors.white
                ),
                )
              ],
            
                ),
                SizedBox(height: Get.height*0.05,),
                Text('No worries!',
                style: GoogleFonts.roboto( 
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  fontSize: 20
                ),
                ),
                Text('Enter your registered email address or mobile number and we’ll send you instructions to reset your password. Let’s get you back on track quickly and securely!"',
                style: GoogleFonts.roboto( 
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  fontSize: 12
                ),
                ),
                SizedBox(height: Get.height*0.02,),
                Commontextfield(tittle: 'Email', hint: 'Your email', obsecuretext: false),
                CommonButton(tittle: 'Send conde')
              ],
            ),
          ),
        ),
      ),
    );
  }
}