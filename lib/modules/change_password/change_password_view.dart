import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/state_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nate/common_widgets/common_button.dart';
import 'package:nate/common_widgets/textfield.dart';
import 'package:nate/modules/change_password/change_password_controller.dart';
import 'package:nate/utils/app_images.dart';

class ChangePasswordView extends GetView<ChangePasswordController> {
  const ChangePasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff17191A),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: Get.height * 0.06),
              Row(
                children: [
                  Image.asset(
                    AppImages.backicon,
                    height: Get.height * 0.05,
                    width: Get.width * 0.1,
                  ),
                  SizedBox(width: Get.width * 0.07),
                  Text(
                    'Change Password',
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: Get.height * 0.02),
              Obx(
                () => Commontextfield(
                  tittle: 'Current Password',
                  hint: '*********',
                  obsecuretext: controller.obsecuretext.value,
                  suffix: GestureDetector(
                    onTap: () => controller.togglepass(),
                    child: Icon(
                      controller.obsecuretext.value
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                  ),
                ),
              ),
              SizedBox(height: Get.height * 0.02),
              Obx(
                () => Commontextfield(
                  tittle: 'New Password',
                  hint: '*********',
                  obsecuretext: controller.obsecuretext.value,
                  suffix: GestureDetector(
                    onTap: () => controller.togglepass(),
                    child: Icon(
                      controller.obsecuretext.value
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                  ),
                ),
              ),
              SizedBox(height: Get.height * 0.02),
              Obx(
                () => Commontextfield(
                  tittle: 'Confirm New Password',
                  hint: '*********',
                  obsecuretext: controller.obsecuretext1.value,
                  suffix: GestureDetector(
                    onTap: () => controller.togglepass1(),
                    child: Icon(
                      controller.obsecuretext1.value
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                  ),
                ),
              ),
              SizedBox(height: Get.height * 0.02),
            Text('Forgot the password?',
            style: GoogleFonts.roboto( 
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Color(0xffEC1B34)
            ),
            ),
            SizedBox(height: Get.height * 0.02),
            CommonButton(tittle: 'Update Password')
            ],
          ),
        ),
      ),
    );
  }
}
