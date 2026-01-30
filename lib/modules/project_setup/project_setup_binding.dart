import 'package:get/get.dart';
import 'package:nate/modules/project_setup/project_setup_controller.dart';

class ProjectSetupBinding extends Bindings{
  @override
  void dependencies() {
Get.lazyPut<ProjectSetupController>(() => ProjectSetupController(),);
  }
}