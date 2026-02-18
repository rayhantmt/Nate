import 'package:get/get.dart';
import 'package:nate/modules/purchase_history/purchase_history_controller.dart';

class PurchaseHistoryBinding extends Bindings{
  @override
  void dependencies() {
   Get.lazyPut<PurchaseHistoryController>(() => PurchaseHistoryController(),);
  }
}