import 'package:get/get.dart';
import 'package:shop_flutter/app/data/remote/other/auth.dart';
import 'package:shop_flutter/app/data/remote/other/auth_impl.dart';

class RemoteSourceBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Auth>(
      () => AuthImpl(),
      tag: (Auth).toString(),
    );
  }
}
