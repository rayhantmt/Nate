import 'package:get/get.dart';

class ProjectSetupController extends GetxController{
  RxBool framed=true.obs;
  RxBool painted=true.obs;
  void toggle(){
    framed.value=!framed.value;
  }
void toggle2(){
  painted.value=!painted.value;
}
}