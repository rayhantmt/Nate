import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nate/modules/quote_generation/quote_generation_controller.dart';
import 'package:nate/utils/app_images.dart';

class QuoteGenerationView extends GetView<QuoteGenerationController> {
  const QuoteGenerationView({super.key});

  @override
  Widget build(BuildContext context) {
    controller.onInit();
    return Scaffold(
      backgroundColor: AppImages.primarycolor,
      body: Stack(
        children: [
          Image.asset(AppImages.quotegeneration),
          Center(
            child: SizedBox(
              height: Get.height*0.2,
              width: Get.width*0.45,
              child: CircularProgressIndicator(
                backgroundColor: Color(0xffEC1B34).withOpacity(0.1),
                color: Color(0xffEC1B34),
                strokeWidth: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
