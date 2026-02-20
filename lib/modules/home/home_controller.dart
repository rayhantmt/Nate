import 'package:get/state_manager.dart';
import 'package:nate/modules/home/home_model.dart';

class HomeController extends GetxController {
  var homedata = <HomeModel>[
    HomeModel(
      address: 'House 1',
      price: 185,
      vents: 3,
      progress: false,
    ),
    HomeModel(
      address: 'House 3',
      price: 111,
      vents: 5,
      progress: true,
    ),
    HomeModel(
      address: 'House 6',
      price: 185,
      vents: 3,
      progress: true,
    ),
    HomeModel(
      address: 'House 8',
      price: 111,
      vents: 5,
      progress: true,
    ),
    HomeModel(
      address: 'Kitchen Vent',
      price: 185,
      vents: 3,
      progress: true,
    ),
    HomeModel(
      address: 'Kitchen Vent',
      price: 111,
      vents: 5,
      progress: true,
    ),
  ].obs;
}
