import 'package:get/get.dart';
import 'package:nate/modules/shopping_cart/shopping_cart_controller.dart';

class ShoppingCartBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ShoppingCartController>(() => ShoppingCartController(),);
  }
}