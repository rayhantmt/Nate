import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(child: SizedBox(),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: Get.height*0.08,
                width: Get.width*0.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Color(0xff3B3D3D)
                ),
                child: Row(
                  children: [
              
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: Get.height*0.05,)
        ],
      ),
    );
  }
}