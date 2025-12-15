import 'package:get/get.dart';
import 'package:nate/modules/login/log_in_controller.dart';

class LogInBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<LogInController>(() => LogInController(),);
  }
}