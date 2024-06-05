import 'package:get/get.dart';
import 'package:shop_flutter/app/core/base/base_controller.dart';
import 'package:shop_flutter/app/modules/main/model/menu_code.dart';

class MainController extends BaseController {
  final _selectedMenuCodeController = MenuCode.home.obs;

  MenuCode get selectedMenuCode => _selectedMenuCodeController.value;

  final lifeCardUpdateController = false.obs;

  onMenuSelected(MenuCode menuCode) async {
    _selectedMenuCodeController(menuCode);
  }
}
