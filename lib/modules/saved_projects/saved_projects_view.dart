import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nate/modules/home/home_controller.dart';
import 'package:nate/utils/app_images.dart';
import 'package:nate/utils/app_pages.dart';

class SavedProjectsView extends StatelessWidget {
  const SavedProjectsView({super.key});

  @override
  Widget build(BuildContext context) {
    final scontorller=Get.find<HomeController>();
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: Get.height*0.07,
          ),
          Row(
            children: [
              Image.asset(AppImages.backicon),
              SizedBox(
                width: Get.width*0.05,
              ),
              Text('Saved Projects',
              style: GoogleFonts.openSans( 
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: Colors.white
              ),
              )
            ],
          ),
               Expanded(
                child: ListView.builder(
                  itemCount: scontorller.homedata.length,

                  itemBuilder: (context, index) => Column(
                    children: [
                      GestureDetector(
                        onTap: () => Get.toNamed(AppPages.hoeproj4ectdetails),
                        child: Container(
                          height: Get.height * 0.17,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: Colors.white.withOpacity(0.05),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        scontorller.homedata[index].address,
                                        style: GoogleFonts.openSans(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: Get.height * 0.04,
                                      width: Get.width * 0.32,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(17),
                                        color: Color(
                                          0xffF97400,
                                        ).withOpacity(0.1),
                                      ),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.circle,
                                            color: Color(0xffF97400),
                                            size: 10,
                                          ),
                                          Text(
                                            scontorller.homedata[index].progress
                                                ? 'In Progress'
                                                : 'Delivered',
                                            style: GoogleFonts.robotoMono(
                                              color: Color(0xffF97400),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: Get.width * 0.01),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Estimate : ${scontorller.homedata[index].price.toString()}',
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      'Vents : ${scontorller.homedata[index].vents.toString()}',
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: Get.height * 0.015),
                    ],
                  ),
                ),
              ),
        ],
      ),
    );
  }
}