import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nate/modules/home/home_controller.dart';
import 'package:nate/utils/app_images.dart';
import 'package:nate/utils/app_pages.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          AppImages.mainhomebackground,
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: Get.height * 0.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    AppImages.homelogo,
                    height: Get.height * 0.15,
                    width: Get.width * 0.30,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage(AppImages.profileimg),
                  ),
                ],
              ),

              Image.asset(AppImages.colourfuldivider),
              SizedBox(height: Get.height * 0.02),
              Container(
                height: Get.height * 0.06,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Colors.white.withOpacity(0.1),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 10),
                    hint: Row(
                      children: [
                        Icon(Icons.search, color: Colors.white),
                        Text(
                          'Search for project',
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Colors.white.withOpacity(0.7),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Expanded(
                child: ListView.builder(
                  itemCount: controller.homedata.length,

                  itemBuilder: (context, index) => Column(
                    children: [
                      GestureDetector(
                        onTap: () => Get.toNamed(AppPages.hoeproj4ectdetails),
                        child: Container(
                          height: Get.height * 0.19,
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
                                        controller.homedata[index].address,
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
                                            controller.homedata[index].progress
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
                                      'Estimate : ${controller.homedata[index].price.toString()}',
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      'Vents : ${controller.homedata[index].vents.toString()}',
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
        ),
      ],
    );
  }
}
