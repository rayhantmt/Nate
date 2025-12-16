import 'package:get/get.dart';

class LogInController extends GetxController{
  var logintype=0.obs;
void setlogintype(int type){
logintype.value=type;
}
var obsecuretext=false.obs;
 void toggoleObsecue(){
  obsecuretext.value=!obsecuretext.value;
 }
}