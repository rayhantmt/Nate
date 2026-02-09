import 'package:get/get.dart';
import 'package:nate/modules/home_project_details/home_project_controller.dart';

class HomeProjectDetailsBinding extends Bindings {
  @override
  void dependencies() {
   Get.lazyPut<HomeProjectDetailsController>(() => HomeProjectDetailsController(),);
  }
}