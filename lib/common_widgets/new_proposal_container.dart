import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class NewProposalContainer extends StatelessWidget {
  const NewProposalContainer({
    super.key,
    required this.tittle,
    required this.c,
  });
  final String tittle;
  final Color c;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: Get.height * 0.1,
          width: Get.width * 0.28,
          decoration: BoxDecoration(color: c),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                tittle,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: Get.height * 0.02),
        Text('Extra Cost: \$0.00', style: TextStyle(color: Colors.white,
        fontSize: 10
        )),
      ],
    );
  }
}
