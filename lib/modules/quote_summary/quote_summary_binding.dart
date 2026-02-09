import 'package:get/get.dart';
import 'package:nate/modules/quote_summary/quote_summary_controller.dart';

class QuoteSummaryBinding extends Bindings{
  @override
  void dependencies() {
Get.lazyPut(() => QuoteSummaryController,);
  }
}