import 'package:get/get.dart';
import 'package:shop_flutter/app/modules/home/bindings/home_binding.dart';
import 'package:shop_flutter/app/modules/home/views/home_view.dart';
import 'package:shop_flutter/app/modules/main/bindings/main_binding.dart';
import 'package:shop_flutter/app/modules/main/views/main_view.dart';
import 'package:shop_flutter/app/modules/other/bindings/other_binding.dart';
import 'package:shop_flutter/app/modules/other/views/login_view.dart';
import 'package:shop_flutter/app/routes/app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.main;

  static final routes = [
    GetPage(
      name: Routes.main,
      page: () => MainView(),
      binding: MainBinding(),
    ),
    GetPage(
      name: Routes.home,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.login,
      page: () => LoginView(),
      binding: OtherBinding(),
    )
  ];
}
