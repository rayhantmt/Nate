import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nate/common_widgets/profile_container.dart';
import 'package:nate/utils/app_images.dart';
import 'package:nate/utils/app_pages.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff17191A),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: Get.height * 0.1),
            Row(
              children: [
                GestureDetector(
                  onTap: () => Get.back(),
                  child: Image.asset(
                    AppImages.backicon,
                    height: Get.height * 0.05,
                    width: Get.width * 0.1,
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () => Get.toNamed(AppPages.changepass),
              child: ProfileContainer(
                tittle: 'Change Password',
                image: AppImages.changepass,
              ),
            ),
            SizedBox(height: Get.height * 0.03),
            Container(
              height: Get.height * 0.05,
              width: Get.width * 0.9,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF).withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Image.asset(
                    AppImages.deleteacc,
                    height: Get.height * 0.03,
                    width: Get.width * 0.1,
                  ),
                  Text(
                    'Delete account',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Color(0xffEC1B34),
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  Image.asset(
                    AppImages.editprofileback,
                    color: Color(0xffEC1B34),
                    height: Get.height * 0.03,
                    width: Get.width * 0.1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
