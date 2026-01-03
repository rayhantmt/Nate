import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: SizedBox(),),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(23),
              color: Color(0xffADADAD1A).withOpacity(0.1)
            ),
            child: Row(
              children: [

              ],
            ),
          )
        ],
      ),
    );
  }
}