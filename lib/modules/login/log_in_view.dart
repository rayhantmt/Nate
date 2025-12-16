import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nate/common_widgets/textfield.dart';
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
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap: () => controller.setlogintype(0),
                              child: Obx(
                                () => Expanded(
                                  child: Container(
                                    height: Get.height * 0.07,
                                    width: Get.width * 0.4,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: controller.logintype.value == 0
                                            ? Color(0xffFFFFFF).withOpacity(0.5)
                                            : Colors.transparent,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Log In',
                                        style: GoogleFonts.roboto(
                                          color: Colors.white,
                                          fontWeight:
                                              controller.logintype.value == 0
                                              ? FontWeight.w700
                                              : FontWeight.w400,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () => controller.setlogintype(1),
                              child: Obx(
                                () => Expanded(
                                  child: Container(
                                    height: Get.height * 0.07,
                                    width: Get.width * 0.4,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: controller.logintype.value == 1
                                            ? Color(0xffFFFFFF).withOpacity(0.5)
                                            : Colors.transparent,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Sign Up',
                                        style: GoogleFonts.roboto(
                                          color: Colors.white,
                                          fontWeight:
                                              controller.logintype.value == 1
                                              ? FontWeight.w700
                                              : FontWeight.w400,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Obx(() {
                          if (controller.logintype.value == 0) {
                            return _loginView();
                          } else {
                            return _signUpView();
                          }
                        }),
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

Widget _loginView() {
  return SingleChildScrollView(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: Get.height * 0.02, width: double.infinity),
        Text(
          'Hi, Welcome back!',
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.w700,
            fontSize: 24,
            color: Colors.white,
          ),
        ),
        SizedBox(height: Get.height * 0.02, width: double.infinity),
        Text(
          'Sign in to access your projects, manage measurements, and generate accurate quotes',
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.w400,
            fontSize: 12,
            color: Colors.white.withOpacity(0.8),
          ),
        ),
         SizedBox(height: Get.height * 0.02, width: double.infinity),
         Commontextfield(tittle: 'Email', hint: 'Your email'),
          SizedBox(height: Get.height * 0.02, width: double.infinity),
          Commontextfield(tittle: 'Password', hint: 'pass')
      ],
    ),
  );
}

Widget _signUpView() {
  return SingleChildScrollView(child: Column(children: [Text('sing up ')]));
}
