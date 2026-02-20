import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nate/common_widgets/common_button.dart';
import 'package:nate/utils/app_images.dart';
import 'package:nate/utils/app_pages.dart';

class QuoteSummaryView extends StatelessWidget {
  const QuoteSummaryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppImages.primarycolor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: Get.height * 0.07),
              Row(
                children: [
                  GestureDetector(
                    onTap: () => Get.back(),
                    child: Image.asset(
                      AppImages.backicon,
                      height: Get.height * 0.08,
                    ),
                  ),
                  SizedBox(width: Get.width * 0.1),
                  Text(
                    'Quote Summary',
                    style: GoogleFonts.openSans(color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: Get.height * 0.05),
              Container(
                height: Get.height * 0.45,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xff999999).withOpacity(0.3),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Image.asset(AppImages.homelogo, height: Get.height * 0.1),
                      SizedBox(height: Get.height * 0.05),
                      Text(
                        'Tittle: Kitchen Vent',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: Get.height * 0.02),
                      Row(
                        children: [
                          Text(
                            'Order Details:',
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        indent: 1,
                        endIndent: 1,
                        height: 1,
                        color: Colors.white.withOpacity(0.2),
                      ),
                      Text(
                        '(1) 5" × 8" rectangle vents with frames, matte white finish',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                      Divider(
                        indent: 1,
                        endIndent: 1,
                        height: 1,
                        color: Colors.white.withOpacity(0.2),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total',
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "\$78.54",
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: Get.height * 0.11),
              GestureDetector(
                onTap: () => Get.toNamed(AppPages.afterquotesummary),
                child: CommonButton(tittle: 'Add to shopping cart'),
              ),
              SizedBox(height: Get.height * 0.02),
              // GestureDetector(
              //   onTap: () => Get.toNamed(AppPages.savedprojects),
              //   child: CommonButton(tittle: 'Add to saved projects'),
              // ),
              SizedBox(height: Get.height * 0.02),
              // Container(
              //   height: Get.height * 0.05,
              //   width: double.infinity,
              //   decoration: BoxDecoration(
              //     border: Border.all(width: 1, color: Color(0xff2E3030)),
              //     borderRadius: BorderRadius.circular(16),
              //   ),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Image.asset(AppImages.downloadlog),
              //       Text(
              //         'Get PDF Receipt',
              //         style: GoogleFonts.roboto(
              //           fontWeight: FontWeight.w600,
              //           fontSize: 16,
              //           color: Color(0xffEC1B34),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
