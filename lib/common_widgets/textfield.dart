import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Commontextfield extends StatelessWidget {
  const Commontextfield({super.key, required this.tittle, required this.hint});
final String tittle;
final String hint;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(tittle),
        Container(
          height: Get.height*0.1,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white.withOpacity(0.8)
            )
          ),
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hint: Text(hint)
            ),
          ),
        ),
      ],
    );
  }
}