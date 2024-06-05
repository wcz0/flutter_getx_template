// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:shop_flutter/flavors/navigation.dart';

// Widget buildNavigationBar(BuildContext context, int index) {
//   var nowIndex = index;
//   return BottomNavigationBar(
//     type: BottomNavigationBarType.fixed,
//     // unselectedItemColor: Colors.grey[900],
//     selectedItemColor: Theme.of(context).primaryColor,
//     unselectedFontSize: 11,
//     selectedFontSize: 11,
//     currentIndex: index,
//     onTap: (index) => _onItemTapped(context, index, nowIndex),
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

// void _onItemTapped(BuildContext context, int index, int nowIndex) {
//   if (index != nowIndex) {
//     final navigation = NavigationEnum.parse(index);
//     GoRouter.of(context).push(navigation.path);
//   }
// }
