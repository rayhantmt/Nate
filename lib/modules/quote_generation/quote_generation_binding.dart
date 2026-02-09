import 'package:get/get.dart';
import 'package:nate/modules/quote_generation/quote_generation_controller.dart';

class QuoteGenerationBinding extends Bindings{
  @override
  void dependencies() {
  Get.lazyPut<QuoteGenerationController>(() => QuoteGenerationController(),);
  }
}