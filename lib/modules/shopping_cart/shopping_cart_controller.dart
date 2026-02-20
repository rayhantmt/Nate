import 'package:get/get.dart';
import 'package:nate/modules/shopping_cart/shopping_cart_model.dart';
import 'package:nate/utils/app_images.dart';

class ShoppingCartController extends GetxController {
  var shoppingcartdata = <ShoppingCartModel>[
    ShoppingCartModel(vent: 'Kitchen Vent', price: '88', selected: false.obs, height: '9',width: '4',orderDetails: '5" × 8" rectangle vents with frames, matte white finish',image: AppImages.vent),
    ShoppingCartModel(vent: 'Restroom vent', price: '88', selected: false.obs,height: '9',width: '4',orderDetails: '5" × 8" rectangle vents with frames, matte white finish',image: AppImages.vent),
    ShoppingCartModel(vent: 'Indoor vent', price: '88', selected: false.obs,height: '9',width: '4',orderDetails: '5" × 8" rectangle vents with frames, matte white finish',image: AppImages.vent),
    ShoppingCartModel(vent: 'Dining Space Vent', price: '88', selected: false.obs,height: '9',width: '4',orderDetails: '5" × 8" rectangle vents with frames, matte white finish',image: AppImages.vent),
    ShoppingCartModel(vent: 'Hall Room vent', price: '88', selected: false.obs,height: '9',width: '4',orderDetails: '5" × 8" rectangle vents with frames, matte white finish',image: AppImages.vent),
    ShoppingCartModel(vent: 'Garadge Vent', price: '88', selected: false.obs,height: '9',width: '4',orderDetails: '5" × 8" rectangle vents with frames, matte white finish',image: AppImages.vent),
  ];
  
}
