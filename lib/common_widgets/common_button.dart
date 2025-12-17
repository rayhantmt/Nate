import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({super.key, required this.tittle});
final String tittle;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height*0.1,
      width: double.infinity,
      child: Text(tittle),
    );
  }
}