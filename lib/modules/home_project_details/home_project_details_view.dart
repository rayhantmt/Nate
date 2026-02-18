import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nate/utils/app_images.dart';

class HomeProjectDetailsView extends StatelessWidget {
  const HomeProjectDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppImages.primarycolor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: Get.height * 0.06),
              Row(
                children: [
                  GestureDetector(
                    onTap: () => Get.back(),
                    child: Image.asset(
                      AppImages.backicon,
                      height: Get.height * 0.06,
                    ),
                  ),
                  SizedBox(width: Get.width * 0.04),
                  Text(
                    'Project Details',
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),

              SizedBox(height: Get.height * 0.02),
              Text(
                'Project Tittle:Kitchen Vent',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: Get.height * 0.03),
              Text(
                'Shipping Address',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              Text(
                '120 Baker Street, Los Angeles, CA 90012',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: Get.height * 0.03),

              Text(
                'Order Details',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              Text(
                '(1) 5" × 8" rectangle vents with frames, matte white finish',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              Divider(
                height: 1,
                indent: 1,
                endIndent: 1,
                color: Colors.white.withOpacity(0.2),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      color: Colors.white,
                    ),
                  ),
                    Text(
                    '\$78.23',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: Get.height * 0.03),
              Container(
                height: Get.height * 0.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.white.withOpacity(0.05),
                ),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Image.asset(
                          AppImages.vent,
                          height: Get.height * 0.25,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          top: Get.height * 0.01,
                          left: Get.width * 0.02,
                          child: Container(
                            height: Get.height * 0.03,
                            width: Get.width * 0.2,
                            decoration: BoxDecoration(
                              color: Color(0xff2E3030),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Center(
                              child: Text(
                                'Frame',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: Get.height * 0.01,
                          left: Get.width * 0.3,
                          child: Container(
                            height: Get.height * 0.03,
                            width: Get.width * 0.2,
                            decoration: BoxDecoration(
                              color: Color(0xff2E3030),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Center(
                              child: Text(
                                'Painted',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Length - 9.5 in',
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Width - 9.5 in',
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Your note',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Colors.white
                        ),
                        ),
                      ],
                    ),
                    Text('LikLorem ipsum dolor sit amet consectetur. Ultrices id feugiat venenatis habitant mattis viverra elementum purus volutpat. Lacus eu molestie pulvinar rhoncus integer proin elementum. Pretium sit fringilla massa tristique aenean commodo leo. Aliquet viverra amet sit porta elementum et pellentesque posuere. Ullamcorper viverra tortor lobortis viverra auctor ....',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 7,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.white
                    ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
