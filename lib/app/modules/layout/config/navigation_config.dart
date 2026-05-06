import 'package:agroly/app/modules/layout/models/menu_model.dart';
import 'package:flutter/material.dart';

class NavigationConfig {
  static const List<MenuItemModel> navItems = [
    MenuItemModel(
      route: '/main/home/',
      label: 'Home',
      icon: Icons.home,
      tooltip: 'Acessar a página inicial',
    ),
    MenuItemModel(
      route: '/main/farm/',
      label: 'Fazenda',
      icon: Icons.agriculture,
      tooltip: 'Acessar fazendas',
    ),
    MenuItemModel(
      route: '/main/safra/',
      label: 'Safra',
      icon: Icons.energy_savings_leaf,
      tooltip: 'Acessar safras',
    ),
    MenuItemModel(
      route: '/main/menu/',
      label: 'Menu',
      icon: Icons.menu,
      tooltip: 'Acessar menu com opções',
    ),
  ];
}
