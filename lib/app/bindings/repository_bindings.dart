import 'package:get/get.dart';


class RepositoryBindings implements Bindings {
  @override
  void dependencies() {
    // Get.lazyPut<GithubRepository>(
    //   () => GithubRepositoryImpl(),
    //   tag: (GithubRepository).toString(),
    // );
  }
}
