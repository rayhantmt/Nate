import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:nate/modules/new_proposal/new_proposal_controller.dart';

class NewProposalBinding extends Bindings{
  @override
  void dependencies() {
   Get.lazyPut<NewProposalController>(() => NewProposalController(),);
  }
}