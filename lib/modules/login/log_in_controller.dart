import 'package:get/get.dart';

class LogInController extends GetxController{
  var logintype=0.obs;
void setlogintype(int type){
logintype.value=type;
}
 RxBool obsecuretext=false.obs;
 void toggoleObsecue(){
  obsecuretext.value=!obsecuretext.value;
 }
 RxBool Checkbox=false.obs;
 void clickCheckbox(val){
  Checkbox.value=val;
 }
 RxBool signuppass=false.obs;
 void toggoleObsecue1(){
  signuppass.value=!signuppass.value;
 }
RxBool signuppass1=false.obs;
 void toggoleObsecue2(){
  signuppass1.value=!signuppass1.value;
 }

}