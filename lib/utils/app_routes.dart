import 'package:get/route_manager.dart';
import 'package:nate/modules/forgot_password/forgor_password_view.dart';
import 'package:nate/modules/login/log_in_binding.dart';
import 'package:nate/modules/login/log_in_view.dart';
import 'package:nate/modules/otp_page/otp_binding.dart';
import 'package:nate/modules/otp_page/otp_page.dart';
import 'package:nate/modules/reset_password/reset_password_view.dart';
import 'package:nate/utils/app_pages.dart';

class AppRoutes {
  static final pages=[
    GetPage(name: AppPages.login, page: () => LogInView(),binding: LogInBinding()),
    GetPage(name: AppPages.forgotpassword, page: () => ForgorPasswordView(),),
    GetPage(name: AppPages.otppage, page: () => OtpPageView(),binding: OtpBinding()),
    GetPage(name: AppPages.resetpass, page:  () => ResetPasswordView(),)
  ];
}