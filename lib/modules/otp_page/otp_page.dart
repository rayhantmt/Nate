import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nate/modules/otp_page/otp_page_controller.dart';
import 'package:nate/utils/app_images.dart';

class OtpPageView extends GetView<OtpController> {
  const OtpPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(AppImages.backicon, height:Get.height*0.1,
                    width: Get.width*0.15,),
                    
                    SizedBox(width: Get.width*0.03,),
                    Text('Verify your email',
                    style: GoogleFonts.roboto( 
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Colors.white
                    ),
                    )
                  ],
                ),



                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(6, (index) {
                    return SizedBox(
                      width: 40,
                      child: TextField(
                        controller: controller.otpControllers[index],
                        focusNode: controller.otpFocusNodes[index],
                        keyboardType: TextInputType.number,
                        maxLength: 1,
                        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                        decoration: const InputDecoration(
                          counterText: '',
                          border: UnderlineInputBorder(),
                        ),
                        onChanged: (value) {
                          controller.onOtpFieldChanged(value, index);
                        },
                      ),
                    );
                  }),
                ),
                const SizedBox(height: 16),
                Obx(() => GestureDetector(
                      onTap: controller.secondsRemaining.value == 0
                          ? controller.resendCode
                          : null,
                      child: Text(
                        controller.secondsRemaining.value == 0
                            ? "Resend code"
                            : "Resend code ${controller.secondsRemaining}s",
                        style: TextStyle(
                          color: controller.secondsRemaining.value == 0
                              ? const Color(0xFF1B1E28)
                              : const Color(0xFF7D848D),
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}