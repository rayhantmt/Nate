import 'package:get/get.dart';

class ResetPasswordController extends GetxController{
  RxBool signuppass=false.obs;
 void toggoleObsecue1(){
  signuppass.value=!signuppass.value;
 }
RxBool signuppass1=false.obs;
 void toggoleObsecue2(){
  signuppass1.value=!signuppass1.value;
 }
}