import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nate/common_widgets/textfield.dart';
import 'package:nate/utils/app_images.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

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
                    Image.asset(
                      AppImages.backicon,
                      height: Get.height * 0.1,
                      width: Get.width * 0.15,
                    ),
                    SizedBox(width: Get.width*0.05,),
                    Text('Reset Password',
                    style: GoogleFonts.roboto( 
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 20
                    ),
                    )
                  ],
                ),
                SizedBox(height: Get.height*0.005,),
                Text('Set Your New Passowrd',
                style: GoogleFonts.roboto( 
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: Colors.white
                ),
                ),
                SizedBox(height: Get.height*0.01,),
                Text('Create a new password to secure your account',
                style: GoogleFonts.roboto( 
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Colors.white.withOpacity(0.8)
                ),
                ),
                SizedBox(height: Get.height*0.02,),
                Commontextfield(tittle: 'Enter new password', hint: '***********', obsecuretext: true)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
