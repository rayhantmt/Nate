import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nate/modules/purchase_history/purchase_history_controller.dart';
import 'package:nate/utils/app_images.dart';

class PurchaseHistoryView extends GetView<PurchaseHistoryController> {
  const PurchaseHistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppImages.primarycolor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: Get.height * 0.07),
            Row(
              children: [
                GestureDetector(
                  onTap: () => Get.back(),
                  child: Image.asset(
                    AppImages.backicon,
                    height: Get.height * 0.06,
                  ),
                ),
                SizedBox(width: Get.width * 0.05),
                Text(
                  'History',
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: Get.height * 0.04),
            Expanded(
              child: ListView.builder(
                itemCount: controller.purchasehistroy.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Container(
                    height: Get.height * 0.1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.white.withOpacity(0.05),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              controller.purchasehistroy[index].tittle,
                              style: GoogleFonts.openSans(
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              height: Get.height * 0.02,
                              width: Get.width * 0.18,
                              decoration: BoxDecoration(
                                color: Color(0xff4BB54B).withOpacity(0.1),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CircleAvatar(
                                    radius: 5,
                                    backgroundColor: Color(0xff4BB54B),
                                  ),
                                  Text(
                                    'Completed',
                                    style: GoogleFonts.robotoMono(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10,
                                      color: Color(0xff4BB54B),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Price: \$${controller.purchasehistroy[index].price}',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Vents: ${controller.purchasehistroy[index].vents}',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
