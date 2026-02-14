import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nate/common_widgets/common_button.dart';
import 'package:nate/modules/shopping_cart/shopping_cart_controller.dart';
import 'package:nate/utils/app_images.dart';

class ShoppingCartView extends GetView<ShoppingCartController> {
  const ShoppingCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppImages.primarycolor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: Get.height * 0.06),
            Row(
              children: [
                GestureDetector(
                  onTap: () => Get.back(),
                  child: Image.asset(AppImages.backicon, height: Get.height * 0.06)),
                SizedBox(width: Get.width * 0.05),
                Text(
                  'Shopping Cart',
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: Get.height * 0.03),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: controller.shoppingcartdata.length,
                itemBuilder: (context, index) => Row(
                  children: [
                    Row(
                      children: [
                        Text(
                          controller.shoppingcartdata[index].vent,
                          style: GoogleFonts.openSans(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        Obx(() => Checkbox(
                          activeColor: Colors.red,
                          value: controller.shoppingcartdata[index].selected.value, onChanged: (value) {
                          controller.shoppingcartdata[index].selected.value =value!;
                          print(controller.shoppingcartdata[index].selected.value.toString());
                        },),)
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: Get.height*0.05,),
            CommonButton(tittle: 'Make payment')

          ],
        ),
      ),
    );
  }
}
