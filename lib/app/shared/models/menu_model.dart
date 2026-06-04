import 'package:flutter/material.dart';

class MenuItemModel {
  final String route;
  final String label;
  final IconData icon;
  final String tooltip;

  const MenuItemModel({
    required this.route,
    required this.label,
    required this.icon,
    this.tooltip = '',
  });
}
