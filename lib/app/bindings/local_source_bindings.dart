import 'package:get/get.dart';
import 'package:shop_flutter/app/data/local/preference/preference_manager.dart';
import 'package:shop_flutter/app/data/local/preference/preference_manager_impl.dart';

class LocalSourceBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PreferenceManager>(
      () => PreferenceManagerImpl(),
      tag: (PreferenceManager).toString(),
      fenix: true,
    );
  }
}
