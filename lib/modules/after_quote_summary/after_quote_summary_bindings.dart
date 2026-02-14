import 'package:get/get.dart';
import 'package:nate/modules/after_quote_summary/after_quote_summary_controller.dart';

class AfterQuoteSummaryBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<AfterQuoteSummaryController>(() => AfterQuoteSummaryController(),);
  }
}