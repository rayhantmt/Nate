import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nate/utils/app_images.dart';

class NewProposalView extends StatelessWidget {
  const NewProposalView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppImages.primarycolor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width:double.infinity,),
           Column(
             children: [
               Text('Create new project',
               style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 22,
                 color: Color(0xffEC1B34),
               ),
               ),
               Icon(Icons.add,
               color: Color(0xffEC1B34),
               size: 45,
               )
             ],
           )
          ],
        ),
      ),
    );
  }
}