import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nate/modules/login/log_in_controller.dart';
import 'package:nate/utils/app_images.dart';

class LogInView extends GetView<LogInController> {
  const LogInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffADADAD),
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(AppImages.login),
            Expanded(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: [
                      SizedBox(height: Get.height * 0.02),
                      Container(
                        height: Get.height * 0.07,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xffFFFFFF).withOpacity(.1),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () => controller.setlogintype(0),
                              child: Expanded(
                                child: Container(height: Get.height * 0.07,   child: Center(
                                  child: Text('Log In',style :GoogleFonts.roboto(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14
                                  ),),
                                ),),
                              ),
                            ),
                             GestureDetector(
                              onTap: () => controller.setlogintype(1),
                               child: Expanded(
                                child: Container(height: Get.height * 0.07,   child: Center(
                                  child: Text('Sign Up',style :GoogleFonts.roboto(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14
                                  ),),
                                ),),
                                                           ),
                             ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
