import 'package:flutter/material.dart';
import 'package:shop_flutter/app/modules/main/model/menu_code.dart';

class BottomNavItem {
  final String title;
  final Icon icon;
  final MenuCode menuCode;

  const BottomNavItem({
    required this.title,
    required this.icon,
    required this.menuCode,
  });
}