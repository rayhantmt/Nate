import 'package:flutter/material.dart';

class EditProfileView extends StatelessWidget {
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