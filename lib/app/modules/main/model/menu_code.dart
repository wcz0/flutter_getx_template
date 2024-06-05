import 'package:flutter/material.dart';
import 'package:shop_flutter/app/modules/main/model/menu_item.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

enum MenuCode {
  home,
  category,
  message,
  cart,
  profile,
}

extension MenuCodeExtension on MenuCode {
  BottomNavItem toBottomNavItem(AppLocalizations localizations) {
    switch (this) {
      case MenuCode.home:
        return BottomNavItem(
          title: localizations.bottomNavHome,
          icon: const Icon(Icons.home),
          menuCode: MenuCode.home,
        );
      case MenuCode.category:
        return BottomNavItem(
          title: localizations.bottomNavCategory,
          icon: const Icon(Icons.category),
          menuCode: MenuCode.category,
        );
      case MenuCode.message:
        return BottomNavItem(
          title: localizations.bottomNavMessage,
          icon: const Icon(Icons.message),
          menuCode: MenuCode.message,
        );
      case MenuCode.cart:
        return BottomNavItem(
          title: localizations.bottomNavCart,
          icon: const Icon(Icons.shop),
          menuCode: MenuCode.cart,
        );
      case MenuCode.profile:
        return BottomNavItem(
          icon: Icon(Icons.person),
          title: localizations.bottomNavProfile,
          menuCode: MenuCode.profile,
        );
    }
  }
}


//     items: const [
//       BottomNavigationBarItem(
//         icon: Icon(Icons.home),
//         label: '首页',
//       ),
//       BottomNavigationBarItem(
//         icon: Icon(Icons.category),
//         label: '分类',
//       ),
//       // BottomNavigationBarItem(
//       //   icon: Icon(Icons.message),
//       //   label: '消息',
//       // ),
//       BottomNavigationBarItem(
//         icon: Icon(Icons.shopify_sharp),
//         label: '购物车',
//       ),
//       BottomNavigationBarItem(
//         icon: Icon(Icons.person),
//         label: '我的',
//       ),
//     ],
//   );
// }