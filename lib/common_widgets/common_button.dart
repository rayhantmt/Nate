import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({super.key, required this.tittle});
final String tittle;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color(0xff2E3030)
      ),
      height: Get.height*0.05,
      width: double.infinity,
      child: Center(child: Text(tittle,
      style: GoogleFonts.roboto( 
        color: Color(0xffEC1B34),
        fontWeight: FontWeight.w600,
        fontSize: 16,
      
      ),
      )),
    );
  }
}