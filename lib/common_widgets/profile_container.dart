import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nate/utils/app_images.dart';

class ProfileContainer extends StatelessWidget {
  final String tittle;
  final String image;
  const ProfileContainer({
    super.key,
    required this.tittle,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.05,
      width: Get.width * 0.9,
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF).withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Image.asset(image, height: Get.height * 0.03, width: Get.width * 0.1),
          Text(tittle,
          style:GoogleFonts.roboto( 
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: Colors.white
          ) ,
          ),
          Expanded(child: SizedBox()),
          Image.asset(AppImages.editprofileback,
          height: Get.height * 0.03, width: Get.width * 0.1
          )
        ],
      ),
    );
  }
}
