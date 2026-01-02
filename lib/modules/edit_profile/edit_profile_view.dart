import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/state_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nate/common_widgets/common_button.dart';
import 'package:nate/common_widgets/textfield.dart';
import 'package:nate/modules/edit_profile/edit_profile_controller.dart';
import 'package:nate/utils/app_images.dart';

class EditProfileView extends GetView<EditProfileController> {
  const EditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff17191A),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: Get.height * 0.07),
              Row(
                children: [
                  Image.asset(
                    AppImages.backicon,
                    height: Get.height * 0.05,
                    width: Get.width * 0.1,
                  ),
                  SizedBox(width: Get.width * 0.08),
                  Text(
                    'Edit Profile Details',
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: Get.height * 0.03),
              CircleAvatar(
                radius: Get.height * 0.07,
                child: ClipOval(
                  child: Image.asset(
                    AppImages.profileimg,
                    fit: BoxFit.cover,
                    width: Get.height * 0.14,
                    height: Get.height * 0.14,
                  ),
                ),
              ),
                SizedBox(height: Get.height * 0.03),
                Commontextfield(tittle: 'First Name', hint: 'sunan', obsecuretext: false),
                  SizedBox(height: Get.height * 0.03),
                Commontextfield(tittle: 'Last Name', hint: 'sunan', obsecuretext: false),
                  SizedBox(height: Get.height * 0.03),
                Commontextfield(tittle: 'Email Address', hint: 'something@gmail.com', obsecuretext: false),  SizedBox(height: Get.height * 0.03),
                Commontextfield(tittle: 'Contact Number', hint: '(719) 266-2837', obsecuretext: false),
                SizedBox(height: Get.height * 0.03),
                CommonButton(tittle: 'Save Changes')
            ],
          ),
        ),
      ),
    );
  }
}
