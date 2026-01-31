import 'package:get/get.dart';
import 'package:nate/modules/project_info/project_info_controller.dart';

class ProjectInfoBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ProjectInfoController>(() => ProjectInfoController(),);
  }
}