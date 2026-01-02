import 'package:get/get.dart';

class ChangePasswordController extends GetxController{
  RxBool obsecuretext=false.obs;
  void togglepass(){
    obsecuretext.value=!obsecuretext.value;
  }
  RxBool obsecuretext1=false.obs;
  void togglepass1(){
    obsecuretext.value=!obsecuretext.value;
  }
  RxBool obsecuretext2=false.obs;
  void togglepass2(){
    obsecuretext.value=!obsecuretext.value;
  }

}