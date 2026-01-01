import 'package:get/get.dart';
import 'package:nate/modules/email_verify_page/email_verify_controller.dart';

class EmailVerifyBinding extends Bindings{
  @override
  void dependencies() {
   Get.lazyPut(() => EmailVerifyController(),);
  }
}