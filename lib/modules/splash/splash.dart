import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nate/utils/app_images.dart';
import 'package:nate/utils/app_pages.dart';


class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
  
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 1500),() => Get.offAllNamed(AppPages.login),);
  
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Image.asset(AppImages.splash, fit: BoxFit.cover));
  }
}
