import 'package:get/get.dart';
import 'package:nate/modules/otp_page/otp_page_controller.dart';

class OtpBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<OtpController>(() => OtpController(),);
  }
}