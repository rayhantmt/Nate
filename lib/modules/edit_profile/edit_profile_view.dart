import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:nate/modules/edit_profile/edit_profile_controller.dart';

class EditProfileView extends GetView<EditProfileController> {
  const EditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff17191A),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('Edit Profie')
          ],
        ),
      ),
    );
  }
}