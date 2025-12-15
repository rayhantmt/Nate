import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Commontextfield extends StatelessWidget {
  const Commontextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height*0.1,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white.withOpacity(0.8)
        )
      ),
    );
  }
}