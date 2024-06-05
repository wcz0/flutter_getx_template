import 'package:get/get.dart';
import 'package:shop_flutter/app/bindings/local_source_bindings.dart';
import 'package:shop_flutter/app/bindings/remote_source_bindings.dart';
import 'package:shop_flutter/app/bindings/repository_bindings.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    RepositoryBindings().dependencies();
    RemoteSourceBindings().dependencies();
    LocalSourceBindings().dependencies();
  }
}