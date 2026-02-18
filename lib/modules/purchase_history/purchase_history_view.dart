import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nate/utils/app_images.dart';

class PurchaseHistoryView extends StatelessWidget {
  const PurchaseHistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppImages.primarycolor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: Get.height*0.07,),
            
          ],
        ),
      ),
    );
  }
}