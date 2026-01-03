import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nate/common_widgets/common_button.dart';
import 'package:nate/common_widgets/textfield.dart';
import 'package:nate/modules/login/log_in_controller.dart';
import 'package:nate/utils/app_images.dart';
import 'package:nate/utils/app_pages.dart';

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
                                () => Container(
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
                            GestureDetector(
                              onTap: () => controller.setlogintype(1),
                              child: Obx(
                                () => Container(
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
  final controller = Get.find<LogInController>();
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
        Commontextfield(
          tittle: 'Email',
          hint: 'Your email',
          obsecuretext: false,
        ),
        SizedBox(height: Get.height * 0.02, width: double.infinity),
        Obx(
          () => Commontextfield(
            tittle: 'Password',
            hint: '********',
            obsecuretext: controller.obsecuretext.value,
            suffix: GestureDetector(
              onTap: () => controller.toggoleObsecue(),
              child: Icon(
                controller.obsecuretext.value
                    ? Icons.visibility
                    : Icons.visibility_off,
                color: Colors.white.withOpacity(0.8),
              ),
            ),
          ),
        ),
        SizedBox(height: Get.height * 0.02, width: double.infinity),
        Row(
          children: [
            Checkbox(
              activeColor: Colors.red,
              value: controller.Checkbox.value,
              onChanged: controller.clickCheckbox,
              shape: CircleBorder(),
            ),
            Text(
              'Remember Me',
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w400,
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            Expanded(child: SizedBox()),
            GestureDetector(
              onTap: () => Get.toNamed(AppPages.forgotpassword),
              child: Text(
                'Forgot Password ?',
                style: GoogleFonts.roboto(
                  color: Color(0xffEC1B34),
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: Get.height * 0.02),
        GestureDetector(
          onTap: () => Get.toNamed(AppPages.mainscreen),
          child: CommonButton(tittle: 'Log In'),
        ),
      ],
    ),
  );
}

Widget _signUpView() {
  final controller = Get.find<LogInController>();
  return SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: Get.height * 0.02, width: double.infinity),
        Text(
          'Create New Acocunt',
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.w700,
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        SizedBox(height: Get.height * 0.01, width: double.infinity),
        Text(
          'Please fill in your contact information',
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.w400,
            color: Colors.white.withOpacity(0.8),
            fontSize: 12,
          ),
        ),
        SizedBox(height: Get.height * 0.01, width: double.infinity),
        Commontextfield(
          tittle: 'First Name',
          hint: 'Enter your first name',
          obsecuretext: false,
        ),
        SizedBox(height: Get.height * 0.01, width: double.infinity),
        Commontextfield(
          tittle: 'Last Name',
          hint: 'Enter your last name',
          obsecuretext: false,
        ),
        SizedBox(height: Get.height * 0.01, width: double.infinity),
        Commontextfield(
          tittle: 'Email Address',
          hint: 'Enter your email address',
          obsecuretext: false,
        ),
        SizedBox(height: Get.height * 0.01, width: double.infinity),
        Commontextfield(
          tittle: 'Contact Number',
          hint: 'Enter your contact number ',
          obsecuretext: false,
        ),
        SizedBox(height: Get.height * 0.01, width: double.infinity),
        Commontextfield(
          tittle: 'Shipping Address',
          hint: '120 Baker Street, Los Angeles, CA 90012',
          obsecuretext: false,
        ),
         SizedBox(height: Get.height * 0.01, width: double.infinity),
        Obx(
          () => Commontextfield(
            tittle: 'Password',
            hint: "**********",
            obsecuretext: controller.signuppass.value,
            suffix: GestureDetector(
              onTap: () => controller.toggoleObsecue1(),
              child: Icon(
                controller.signuppass.value
                    ? Icons.visibility
                    : Icons.visibility_off,
                color: Colors.white.withOpacity(0.8),
              ),
            ),
          ),
        ),
        SizedBox(height: Get.height * 0.01, width: double.infinity),
        Obx(
          () => Commontextfield(
            tittle: 'Confirmed Password',
            hint: "**********",
            obsecuretext: controller.signuppass1.value,
            suffix: GestureDetector(
              onTap: () => controller.toggoleObsecue2(),
              child: Icon(
                controller.signuppass1.value
                    ? Icons.visibility
                    : Icons.visibility_off,
                color: Colors.white.withOpacity(0.8),
              ),
            ),
          ),
        ),
        SizedBox(height: Get.height * 0.01, width: double.infinity),

        Row(
          children: [
            Checkbox(
              activeColor: Colors.red,
              value: controller.Checkbox.value,
              onChanged: controller.clickCheckbox,
              //shape: CircleBorder(),
            ),
            Text(
              'I agree to the',
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w400,
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            Text(
              'Terms & Conditions',

              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w400,
                color: Colors.white,
                fontSize: 14,
                decoration: TextDecoration.underline,
                decorationColor: Colors.white,
              ),
            ),
            Text(
              ' And ',
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w400,
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            Text(
              'Privacy Policy',
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w400,
                color: Colors.white,
                fontSize: 14,
                decoration: TextDecoration.underline,
                decorationColor: Colors.white,
              ),
            ),
            Expanded(child: SizedBox()),
          ],
        ),
        GestureDetector(
          onTap: () => Get.toNamed(AppPages.emailverify),
          child: CommonButton(tittle: 'Verify Email'),
        ),
      ],
    ),
  );
}
