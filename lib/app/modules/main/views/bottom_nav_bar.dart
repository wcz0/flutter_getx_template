import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_flutter/app/core/base/base_widget_mixin.dart';
import 'package:shop_flutter/app/core/values/app_colors.dart';
import 'package:shop_flutter/app/modules/main/controllers/bottom_nav_controller.dart';
import 'package:shop_flutter/app/modules/main/model/menu_code.dart';
import 'package:shop_flutter/app/modules/main/model/menu_item.dart';

typedef OnBottomNavItemSelected = Function(MenuCode menuCode);

class BottomNavBar extends StatelessWidget with BaseWidgetMixin {
  BottomNavBar({
    Key? key,
    required this.onItemSelected,
  }) : super(key: key);

  final OnBottomNavItemSelected onItemSelected;
  final navController = BottomNavController();
  final Key bottomNavKey = GlobalKey();
  final Color selectedItemColor = Colors.white;
  final Color unselectedItemColor = Colors.grey;

  @override
  Widget body(BuildContext context) {
    List<BottomNavItem> navItems = _getNavItems();

    return Obx(
      () => BottomNavigationBar(
        key: bottomNavKey,
        items: _navItemBuilder(navItems),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.colorAccent,
        selectedItemColor: selectedItemColor,
        unselectedItemColor: unselectedItemColor,
        currentIndex: navController.selectedIndex,
        onTap: (index) {
          navController.updateSelectedIndex(index);
          onItemSelected(navItems[index].menuCode);
        },
      ),
    );
  }

  List<BottomNavigationBarItem> _navItemBuilder(List<BottomNavItem> navItems) {
    return navItems
        .map(
          (BottomNavItem navItem) => _getBottomNavigationBarItem(
            navItem,
            navController.selectedIndex == navItems.indexOf(navItem),
          ),
        )
        .toList();
  }

  BottomNavigationBarItem _getBottomNavigationBarItem(
    BottomNavItem navItem,
    bool isSelected,
  ) {
    return BottomNavigationBarItem(
      icon: navItem.icon,
      label: navItem.title,
      tooltip: navItem.title,
    );
  }

  List<BottomNavItem> _getNavItems() {
    return MenuCode.values
        .map(
          (menuCode) => menuCode.toBottomNavItem(appLocalization),
        )
        .toList();
  }
}
