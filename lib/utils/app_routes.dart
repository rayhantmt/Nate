import 'package:get/route_manager.dart';
import 'package:nate/modules/login/log_in_binding.dart';
import 'package:nate/modules/login/log_in_view.dart';
import 'package:nate/utils/app_pages.dart';

class AppRoutes {
  static final pages=[
    GetPage(name: AppPages.login, page: () => LogInView(),binding: LogInBinding()),
  ];
}