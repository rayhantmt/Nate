import 'package:get/get.dart';
import 'package:nate/modules/main_screen/main_screen_controller.dart';

class MainScreenBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<MainScreenController>(() => MainScreenController(),);
  }
}