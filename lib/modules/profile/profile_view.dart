import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nate/common_widgets/profile_container.dart';
import 'package:nate/utils/app_images.dart';
import 'package:nate/utils/app_pages.dart';

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
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                SizedBox(height: Get.height * 0.05),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Profile',
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w700,
                        fontSize: 32,
                        color: Colors.white,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Get.toNamed(AppPages.settings),
                      child: Image.asset(
                        AppImages.settingsicon,
                        height: Get.height * 0.05,
                        width: Get.width * 0.1,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: Get.height * 0.02),
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
                SizedBox(height: Get.height * 0.01),
                Text(
                  'Lukas Wanger',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: Get.height * 0.02),
                GestureDetector(
                  onTap: () => Get.toNamed(AppPages.editprofile),
                  child: ProfileContainer(
                    tittle: 'Edit Profile Details',
                    image: AppImages.editprofile,
                  ),
                ),
                SizedBox(height: Get.height * 0.015),
                ProfileContainer(
                  tittle: 'Saved Projects',
                  image: AppImages.savedporjects,
                ),
                SizedBox(height: Get.height * 0.015),
                ProfileContainer(
                  tittle: 'Purchase History',
                  image: AppImages.historyicon,
                ),
                SizedBox(height: Get.height * 0.015),
                ProfileContainer(
                  tittle: 'Contact Us',
                  image: AppImages.contacticon,
                ),
                SizedBox(height: Get.height * 0.015),
                ProfileContainer(
                  tittle: 'Privacy Policy',
                  image: AppImages.policy,
                ),
                SizedBox(height: Get.height * 0.015),
                ProfileContainer(
                  tittle: 'Terms & condition',
                  image: AppImages.terms,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
