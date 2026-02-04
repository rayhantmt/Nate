import 'package:get/state_manager.dart';
import 'package:nate/modules/home/home_model.dart';

class HomeController extends GetxController {
  var homedata = <HomeModel>[
    HomeModel(
      address: '120 Baker Street, Los Angeles, CA 90012',
      price: 185,
      vents: 3,
      progress: true,
    ),
    HomeModel(
      address: '120 Baker Street, Los Angeles, CA 90012',
      price: 111,
      vents: 5,
      progress: true,
    ),
    HomeModel(
      address: '120 Baker Street, Los Angeles, CA 90012',
      price: 185,
      vents: 3,
      progress: true,
    ),
    HomeModel(
      address: '120 Baker Street, Los Angeles, CA 90012',
      price: 111,
      vents: 5,
      progress: true,
    ),
    HomeModel(
      address: '120 Baker Street, Los Angeles, CA 90012',
      price: 185,
      vents: 3,
      progress: true,
    ),
    HomeModel(
      address: '120 Baker Street, Los Angeles, CA 90012',
      price: 111,
      vents: 5,
      progress: true,
    ),
  ].obs;
}
