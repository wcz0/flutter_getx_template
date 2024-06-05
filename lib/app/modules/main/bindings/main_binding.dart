import 'package:get/get.dart';
import 'package:shop_flutter/app/modules/home/controllers/home_controller.dart';
import 'package:shop_flutter/app/modules/main/controllers/main_controller.dart';
import 'package:shop_flutter/app/modules/other/controllers/other_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainController>(
      () => MainController(),
      fenix: true,
    );
    Get.lazyPut<OtherController>(
      () => OtherController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
      fenix: true,
    );
  }
}
