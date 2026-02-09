import 'package:get/get.dart';
import 'package:nate/utils/app_pages.dart';

class QuoteGenerationController extends GetxController{
  @override
 @override
void onInit() {
  super.onInit(); 
  
  Future.delayed(const Duration(seconds: 2), () {
    Get.toNamed(AppPages.quotesummary);
  });
}
}