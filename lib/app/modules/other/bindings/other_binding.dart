import 'package:get/get.dart';
import 'package:shop_flutter/app/modules/other/controllers/login_controller.dart';
import 'package:shop_flutter/app/modules/other/controllers/other_controller.dart';

class OtherBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OtherController>(
      () => OtherController(),
      fenix: true,
    );
    Get.lazyPut<LoginController>(
      () => LoginController(),
      fenix: true,
    );
  }
}
