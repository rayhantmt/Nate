import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:nate/modules/change_password/change_password_controller.dart';

class ChangePasswordView extends GetView<ChangePasswordController> {
  const ChangePasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff17191A),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('Change Password')
          ],
        ),
      ),
    );
  }
}