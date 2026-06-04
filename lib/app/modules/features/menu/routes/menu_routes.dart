import 'package:agroly/app/shared/models/menu_model.dart';
import 'package:flutter/material.dart';

class MenuRoutes {
  static const List<MenuItemModel> menuItems = [
    MenuItemModel(
      route: '/in/finance/',
      label: 'Finanças',
      icon: Icons.home,
      tooltip: 'Acessar minhas finanças',
    ),
    MenuItemModel(
      route: '/in/season/',
      label: 'Safra',
      icon: Icons.agriculture,
      tooltip: 'Acessar safras',
    ),
    MenuItemModel(
      route: '/in/inventory-item/',
      label: 'Inventário',
      icon: Icons.energy_savings_leaf,
      tooltip: 'Acessar inventário',
    ),
    MenuItemModel(
      route: '/in/crops/',
      label: 'Sementes',
      icon: Icons.menu,
      tooltip: 'Acessar sementes',
    ),
  ];
}
