import 'package:get/state_manager.dart';

class MainScreenController extends GetxController{
  var memorytype = 0.obs;
  void setDepositType(int type) {
    memorytype.value = type;
  }
}