import 'package:get/get.dart';
import 'package:nate/modules/profile/profile_controller.dart';

class ProfileBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(() => ProfileController(),);
  }
}