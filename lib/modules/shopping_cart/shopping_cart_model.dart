import 'package:get/get.dart';

class ShoppingCartModel {
  final String vent;
  final String price;
  final String image;
  final String orderDetails;
  final String height;
  final String width;
 RxBool selected;
  ShoppingCartModel({required this.image,required this.orderDetails,required this.height,required this.width ,required this.vent, required this.price,required this.selected});
}