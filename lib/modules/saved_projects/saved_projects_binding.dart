import 'package:get/get.dart';
import 'package:nate/modules/saved_projects/saved_projects_controller.dart';

class SavedProjectsBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => SavedProjectsController(),);
  }
}