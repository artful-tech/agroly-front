import 'package:agroly/app/shared/models/menu_model.dart';
import 'package:flutter/material.dart';

class NavigationRoutes {
  static const List<MenuItemModel> navItems = [
    MenuItemModel(
      route: '/in/home/',
      label: 'Home',
      icon: Icons.home,
      tooltip: 'Acessar a página inicial',
    ),
    MenuItemModel(
      route: '/in/farm/',
      label: 'Fazenda',
      icon: Icons.agriculture,
      tooltip: 'Acessar fazendas',
    ),
    MenuItemModel(
      route: '/in/safra/',
      label: 'Safra',
      icon: Icons.energy_savings_leaf,
      tooltip: 'Acessar safras',
    ),
    MenuItemModel(
      route: '/in/menu/',
      label: 'Menu',
      icon: Icons.menu,
      tooltip: 'Acessar menu com opções',
    ),
  ];
}
